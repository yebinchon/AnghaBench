
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 scalar_t__ HeapReAlloc (int ,int ,int,int) ;
 int TRUE ;
 int memcpy (int,int ,int) ;

__attribute__((used)) static BOOL Append(LPWSTR *ppszText, DWORD *pdwTextLen, LPCWSTR pszAppendText, DWORD dwAppendLen)
{
    LPWSTR pszNewText;

    if (dwAppendLen > 0)
    {
        if (*ppszText)
        {
            pszNewText = (LPWSTR) HeapReAlloc(GetProcessHeap(), 0, *ppszText, (*pdwTextLen + dwAppendLen) * sizeof(WCHAR));
        }
        else
        {
            pszNewText = (LPWSTR) HeapAlloc(GetProcessHeap(), 0, dwAppendLen * sizeof(WCHAR));
        }

        if (!pszNewText)
            return FALSE;

        memcpy(pszNewText + *pdwTextLen, pszAppendText, dwAppendLen * sizeof(WCHAR));
        *ppszText = pszNewText;
        *pdwTextLen += dwAppendLen;
    }
    return TRUE;
}
