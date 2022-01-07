
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_3__ {int hSelf; } ;
typedef TYPE_1__* PCREATE_DATA ;
typedef int * LPWSTR ;
typedef int INT ;
typedef scalar_t__ HWND ;


 scalar_t__ GetDlgItem (int ,int ) ;
 int GetWindowTextLengthW (scalar_t__) ;
 int GetWindowTextW (scalar_t__,int *,int) ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int ProcessHeap ;

__attribute__((used)) static LPWSTR
GetStringFromDialog(PCREATE_DATA Data,
                    UINT id)
{
    HWND hwnd;
    LPWSTR lpString = ((void*)0);
    INT iLen = 0;

    hwnd = GetDlgItem(Data->hSelf,
                      id);
    if (hwnd)
    {
        iLen = GetWindowTextLengthW(hwnd);
        if (iLen)
        {
            lpString = (LPWSTR)HeapAlloc(ProcessHeap,
                                         0,
                                         (iLen + 1) * sizeof(WCHAR));
            if (lpString)
            {
                GetWindowTextW(hwnd,
                               lpString,
                               iLen + 1);
            }
        }
    }

    return lpString;
}
