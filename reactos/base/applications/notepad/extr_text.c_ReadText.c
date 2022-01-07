
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int* LPWSTR ;
typedef int LPCSTR ;
typedef int* LPBYTE ;
typedef int HANDLE ;
typedef int ENCODING ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int ARRAY_SIZE (char*) ;
 int AnalyzeEncoding (char const*,int) ;
 int Append (int**,int*,...) ;
 int CP_ACP ;
 int CP_UTF8 ;
 int DEFAULT_UNREACHABLE ;




 size_t EOLN_CR ;
 size_t EOLN_CRLF ;
 size_t EOLN_LF ;
 int FALSE ;
 int GetFileSize (int ,int *) ;
 int GetProcessHeap () ;
 int* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int*) ;
 int INVALID_FILE_SIZE ;
 int MultiByteToWideChar (int,int ,int ,int,int*,int) ;
 int ReadFile (int ,int*,int,int*,int *) ;
 int TRUE ;

BOOL
ReadText(HANDLE hFile, LPWSTR *ppszText, DWORD *pdwTextLen, ENCODING *pencFile, int *piEoln)
{
    DWORD dwSize;
    LPBYTE pBytes = ((void*)0);
    LPWSTR pszText;
    LPWSTR pszAllocText = ((void*)0);
    DWORD dwPos, i;
    DWORD dwCharCount;
    BOOL bSuccess = FALSE;
    BYTE b = 0;
    ENCODING encFile = 131;
    int iCodePage = 0;
    WCHAR szCrlf[2] = {'\r', '\n'};
    DWORD adwEolnCount[3] = {0, 0, 0};

    *ppszText = ((void*)0);
    *pdwTextLen = 0;

    dwSize = GetFileSize(hFile, ((void*)0));
    if (dwSize == INVALID_FILE_SIZE)
        goto done;

    pBytes = HeapAlloc(GetProcessHeap(), 0, dwSize + 2);
    if (!pBytes)
        goto done;

    if (!ReadFile(hFile, pBytes, dwSize, &dwSize, ((void*)0)))
        goto done;
    dwPos = 0;


    pBytes[dwSize + 0] = '\0';
    pBytes[dwSize + 1] = '\0';


    if ((dwSize >= 2) && (pBytes[0] == 0xFF) && (pBytes[1] == 0xFE))
    {
        encFile = 129;
        dwPos += 2;
    }
    else if ((dwSize >= 2) && (pBytes[0] == 0xFE) && (pBytes[1] == 0xFF))
    {
        encFile = 130;
        dwPos += 2;
    }
    else if ((dwSize >= 3) && (pBytes[0] == 0xEF) && (pBytes[1] == 0xBB) && (pBytes[2] == 0xBF))
    {
        encFile = 128;
        dwPos += 3;
    }
    else
    {
        encFile = AnalyzeEncoding((const char *)pBytes, dwSize);
    }

    switch(encFile)
    {
    case 130:
        for (i = dwPos; i < dwSize-1; i += 2)
        {
            b = pBytes[i+0];
            pBytes[i+0] = pBytes[i+1];
            pBytes[i+1] = b;
        }


    case 129:
        pszText = (LPWSTR) &pBytes[dwPos];
        dwCharCount = (dwSize - dwPos) / sizeof(WCHAR);
        break;

    case 131:
    case 128:
        if (encFile == 131)
            iCodePage = CP_ACP;
        else if (encFile == 128)
            iCodePage = CP_UTF8;

        if ((dwSize - dwPos) > 0)
        {
            dwCharCount = MultiByteToWideChar(iCodePage, 0, (LPCSTR)&pBytes[dwPos], dwSize - dwPos, ((void*)0), 0);
            if (dwCharCount == 0)
                goto done;
        }
        else
        {

            dwCharCount = 0;
        }

        pszAllocText = (LPWSTR) HeapAlloc(GetProcessHeap(), 0, (dwCharCount + 1) * sizeof(WCHAR));
        if (!pszAllocText)
            goto done;

        if ((dwSize - dwPos) > 0)
        {
            if (!MultiByteToWideChar(iCodePage, 0, (LPCSTR)&pBytes[dwPos], dwSize - dwPos, pszAllocText, dwCharCount))
                goto done;
        }

        pszAllocText[dwCharCount] = '\0';
        pszText = pszAllocText;
        break;
    DEFAULT_UNREACHABLE;
    }

    dwPos = 0;
    for (i = 0; i < dwCharCount; i++)
    {
        switch(pszText[i])
        {
        case '\r':
            if ((i < dwCharCount-1) && (pszText[i+1] == '\n'))
            {
                i++;
                adwEolnCount[EOLN_CRLF]++;
                break;
            }


        case '\n':
            if (!Append(ppszText, pdwTextLen, &pszText[dwPos], i - dwPos))
                return FALSE;
            if (!Append(ppszText, pdwTextLen, szCrlf, ARRAY_SIZE(szCrlf)))
                return FALSE;
            dwPos = i + 1;

            if (pszText[i] == '\r')
                adwEolnCount[EOLN_CR]++;
            else
                adwEolnCount[EOLN_LF]++;
            break;

        case '\0':
            pszText[i] = ' ';
            break;
        }
    }

    if (!*ppszText && (pszText == pszAllocText))
    {

        *ppszText = pszAllocText;
        *pdwTextLen = dwCharCount;
        pszAllocText = ((void*)0);
    }
    else
    {

        if (!Append(ppszText, pdwTextLen, &pszText[dwPos], i - dwPos + 1))
            return FALSE;
    }


    *piEoln = EOLN_CRLF;
    if (adwEolnCount[EOLN_LF] > adwEolnCount[*piEoln])
        *piEoln = EOLN_LF;
    if (adwEolnCount[EOLN_CR] > adwEolnCount[*piEoln])
        *piEoln = EOLN_CR;
    *pencFile = encFile;

    bSuccess = TRUE;

done:
    if (pBytes)
        HeapFree(GetProcessHeap(), 0, pBytes);
    if (pszAllocText)
        HeapFree(GetProcessHeap(), 0, pszAllocText);

    if (!bSuccess && *ppszText)
    {
        HeapFree(GetProcessHeap(), 0, *ppszText);
        *ppszText = ((void*)0);
        *pdwTextLen = 0;
    }
    return bSuccess;
}
