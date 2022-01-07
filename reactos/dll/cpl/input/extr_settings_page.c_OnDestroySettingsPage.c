
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HWND ;


 int InputList_Destroy () ;
 int LayoutList_Destroy () ;
 int LocaleList_Destroy () ;

__attribute__((used)) static VOID
OnDestroySettingsPage(HWND hwndDlg)
{
    LayoutList_Destroy();
    LocaleList_Destroy();
    InputList_Destroy();
}
