
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef size_t UINT ;
typedef int* PWSTR ;
typedef int* PCWSTR ;
typedef size_t INT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int*) ;
 int* InsSpacePos (int*,size_t) ;
 scalar_t__ TRUE ;
 scalar_t__ _wtoi (int*) ;
 int wcscpy (int*,int*) ;
 size_t wcslen (int*) ;

PWSTR
InsSpacesFmt(PCWSTR szSourceStr, PCWSTR szFmtStr)
{
    PWSTR pszDestStr;
    PWSTR pszTempStr;
    WCHAR szFmtVal[255];
    UINT nFmtCount = 0;
    INT nValCount = 0;
    INT nLastVal = 0;
    INT nSpaceOffset = 0;
    BOOL wasNul=FALSE;

    pszDestStr = (PWSTR)HeapAlloc(GetProcessHeap(), 0, 255 * sizeof(WCHAR));
    if (pszDestStr == ((void*)0))
        return ((void*)0);

    wcscpy(pszDestStr, szSourceStr);


    if (!*szFmtStr)
        return pszDestStr;


    for (nFmtCount = 0; nFmtCount <= wcslen(szFmtStr); nFmtCount++)
    {
        if (szFmtStr[nFmtCount] == L';' || szFmtStr[nFmtCount] == L'\0')
        {
            if (_wtoi(szFmtVal) == 0 && !wasNul)
            {
                wasNul=TRUE;
                break;
            }


            if (wasNul)
            {
                nSpaceOffset += nLastVal;
            }
            else
            {
                nSpaceOffset += _wtoi(szFmtVal);
            }

            szFmtVal[nValCount] = L'\0';
            nValCount=0;


            pszTempStr = InsSpacePos(pszDestStr, nSpaceOffset);
            wcscpy(pszDestStr,pszTempStr);
            HeapFree(GetProcessHeap(), 0, pszTempStr);


            if (!wasNul)
            {
                nSpaceOffset++;
                nLastVal = _wtoi(szFmtVal);
            }
        }
        else
        {
            szFmtVal[nValCount++] = szFmtStr[nFmtCount];
        }
    }


    if (wasNul && nLastVal != 0)
    {
        for (nFmtCount = nSpaceOffset + nLastVal; nFmtCount < wcslen(pszDestStr); nFmtCount += nLastVal + 1)
        {
            pszTempStr = InsSpacePos(pszDestStr, nFmtCount);
            wcscpy(pszDestStr, pszTempStr);
            HeapFree(GetProcessHeap(), 0, pszTempStr);
        }
    }

    return pszDestStr;
}
