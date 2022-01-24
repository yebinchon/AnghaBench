#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  int* LPWSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int* LPBYTE ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int ENCODING ;
typedef  int DWORD ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int**,int*,...) ; 
 int CP_ACP ; 
 int CP_UTF8 ; 
 int /*<<< orphan*/  DEFAULT_UNREACHABLE ; 
#define  ENCODING_ANSI 131 
#define  ENCODING_UTF16BE 130 
#define  ENCODING_UTF16LE 129 
#define  ENCODING_UTF8 128 
 size_t EOLN_CR ; 
 size_t EOLN_CRLF ; 
 size_t EOLN_LF ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int INVALID_FILE_SIZE ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 

BOOL
FUNC9(HANDLE hFile, LPWSTR *ppszText, DWORD *pdwTextLen, ENCODING *pencFile, int *piEoln)
{
    DWORD dwSize;
    LPBYTE pBytes = NULL;
    LPWSTR pszText;
    LPWSTR pszAllocText = NULL;
    DWORD dwPos, i;
    DWORD dwCharCount;
    BOOL bSuccess = FALSE;
    BYTE b = 0;
    ENCODING encFile = ENCODING_ANSI;
    int iCodePage = 0;
    WCHAR szCrlf[2] = {'\r', '\n'};
    DWORD adwEolnCount[3] = {0, 0, 0};

    *ppszText = NULL;
    *pdwTextLen = 0;

    dwSize = FUNC3(hFile, NULL);
    if (dwSize == INVALID_FILE_SIZE)
        goto done;

    pBytes = FUNC5(FUNC4(), 0, dwSize + 2);
    if (!pBytes)
        goto done;

    if (!FUNC8(hFile, pBytes, dwSize, &dwSize, NULL))
        goto done;
    dwPos = 0;

    /* Make sure that there is a NUL character at the end, in any encoding */
    pBytes[dwSize + 0] = '\0';
    pBytes[dwSize + 1] = '\0';

    /* Look for Byte Order Marks */
    if ((dwSize >= 2) && (pBytes[0] == 0xFF) && (pBytes[1] == 0xFE))
    {
        encFile = ENCODING_UTF16LE;
        dwPos += 2;
    }
    else if ((dwSize >= 2) && (pBytes[0] == 0xFE) && (pBytes[1] == 0xFF))
    {
        encFile = ENCODING_UTF16BE;
        dwPos += 2;
    }
    else if ((dwSize >= 3) && (pBytes[0] == 0xEF) && (pBytes[1] == 0xBB) && (pBytes[2] == 0xBF))
    {
        encFile = ENCODING_UTF8;
        dwPos += 3;
    }
    else
    {
        encFile = FUNC1((const char *)pBytes, dwSize);
    }

    switch(encFile)
    {
    case ENCODING_UTF16BE:
        for (i = dwPos; i < dwSize-1; i += 2)
        {
            b = pBytes[i+0];
            pBytes[i+0] = pBytes[i+1];
            pBytes[i+1] = b;
        }
        /* fall through */

    case ENCODING_UTF16LE:
        pszText = (LPWSTR) &pBytes[dwPos];
        dwCharCount = (dwSize - dwPos) / sizeof(WCHAR);
        break;

    case ENCODING_ANSI:
    case ENCODING_UTF8:
        if (encFile == ENCODING_ANSI)
            iCodePage = CP_ACP;
        else if (encFile == ENCODING_UTF8)
            iCodePage = CP_UTF8;

        if ((dwSize - dwPos) > 0)
        {
            dwCharCount = FUNC7(iCodePage, 0, (LPCSTR)&pBytes[dwPos], dwSize - dwPos, NULL, 0);
            if (dwCharCount == 0)
                goto done;
        }
        else
        {
            /* special case for files with no characters (other than BOMs) */
            dwCharCount = 0;
        }

        pszAllocText = (LPWSTR) FUNC5(FUNC4(), 0, (dwCharCount + 1) * sizeof(WCHAR));
        if (!pszAllocText)
            goto done;

        if ((dwSize - dwPos) > 0)
        {
            if (!FUNC7(iCodePage, 0, (LPCSTR)&pBytes[dwPos], dwSize - dwPos, pszAllocText, dwCharCount))
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
            /* fall through */

        case '\n':
            if (!FUNC2(ppszText, pdwTextLen, &pszText[dwPos], i - dwPos))
                return FALSE;
            if (!FUNC2(ppszText, pdwTextLen, szCrlf, FUNC0(szCrlf)))
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
        /* special case; don't need to reallocate */
        *ppszText = pszAllocText;
        *pdwTextLen = dwCharCount;
        pszAllocText = NULL;
    }
    else
    {
        /* append last remaining text */
        if (!FUNC2(ppszText, pdwTextLen, &pszText[dwPos], i - dwPos + 1))
            return FALSE;
    }

    /* chose which eoln to use */
    *piEoln = EOLN_CRLF;
    if (adwEolnCount[EOLN_LF] > adwEolnCount[*piEoln])
        *piEoln = EOLN_LF;
    if (adwEolnCount[EOLN_CR] > adwEolnCount[*piEoln])
        *piEoln = EOLN_CR;
    *pencFile = encFile;

    bSuccess = TRUE;

done:
    if (pBytes)
        FUNC6(FUNC4(), 0, pBytes);
    if (pszAllocText)
        FUNC6(FUNC4(), 0, pszAllocText);

    if (!bSuccess && *ppszText)
    {
        FUNC6(FUNC4(), 0, *ppszText);
        *ppszText = NULL;
        *pdwTextLen = 0;
    }
    return bSuccess;
}