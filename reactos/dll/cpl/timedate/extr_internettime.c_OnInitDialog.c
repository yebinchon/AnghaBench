
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HWND ;


 int CreateNTPServerList (int ) ;
 int EnableDialogText (int ) ;
 int GetSyncSetting (int ) ;

__attribute__((used)) static VOID
OnInitDialog(HWND hwnd)
{
    GetSyncSetting(hwnd);
    EnableDialogText(hwnd);
    CreateNTPServerList(hwnd);
}
