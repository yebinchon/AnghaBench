
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int LPARAM ;
typedef int HWND ;
typedef int DWORD ;


 int EM_GETSEL ;
 int SendMessage (int ,int ,int ,int ) ;

int GetSelectionTextLength(HWND hWnd)
{
    DWORD dwStart = 0;
    DWORD dwEnd = 0;

    SendMessage(hWnd, EM_GETSEL, (WPARAM)&dwStart, (LPARAM)&dwEnd);

    return dwEnd - dwStart;
}
