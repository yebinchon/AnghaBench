
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int TCHAR ;
typedef scalar_t__ LPTSTR ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;


 int EM_GETSEL ;
 int GetProcessHeap () ;
 scalar_t__ GetWindowText (int ,scalar_t__,scalar_t__) ;
 scalar_t__ GetWindowTextLength (int ) ;
 scalar_t__ HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,scalar_t__) ;


 int SendMessage (int ,int ,int ,int ) ;
 int StringCchCopyN (scalar_t__,int,scalar_t__,scalar_t__) ;

int GetSelectionText(HWND hWnd, LPTSTR lpString, int nMaxCount)
{
    DWORD dwStart = 0;
    DWORD dwEnd = 0;
    DWORD dwSize;
    HRESULT hResult;
    LPTSTR lpTemp;

    if (!lpString)
    {
        return 0;
    }

    SendMessage(hWnd, EM_GETSEL, (WPARAM)&dwStart, (LPARAM)&dwEnd);

    if (dwStart == dwEnd)
    {
        return 0;
    }

    dwSize = GetWindowTextLength(hWnd) + 1;
    lpTemp = HeapAlloc(GetProcessHeap(), 0, dwSize * sizeof(TCHAR));
    if (!lpTemp)
    {
        return 0;
    }

    dwSize = GetWindowText(hWnd, lpTemp, dwSize);

    if (!dwSize)
    {
        HeapFree(GetProcessHeap(), 0, lpTemp);
        return 0;
    }

    hResult = StringCchCopyN(lpString, nMaxCount, lpTemp + dwStart, dwEnd - dwStart);
    HeapFree(GetProcessHeap(), 0, lpTemp);

    switch (hResult)
    {
        case 128:
        {
            return dwEnd - dwStart;
        }

        case 129:
        {
            return nMaxCount - 1;
        }

        default:
        {
            return 0;
        }
    }
}
