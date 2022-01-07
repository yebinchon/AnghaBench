
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HWND ;
typedef int GLOBALS ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;

__attribute__((used)) static VOID
AppearancePage_OnDestroy(HWND hwndDlg, GLOBALS *g)
{
    HeapFree(GetProcessHeap(), 0, g);
}
