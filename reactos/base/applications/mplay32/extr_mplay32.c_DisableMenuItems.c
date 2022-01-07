
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EnableMenuItem (int ,int ,int) ;
 int IDM_CLOSE_FILE ;
 int IDM_DEVPROPS ;
 int IDM_SWITCHVIEW ;
 int MF_BYCOMMAND ;
 int MF_GRAYED ;
 int hMainMenu ;

void DisableMenuItems(void)
{
    EnableMenuItem(hMainMenu, IDM_CLOSE_FILE, MF_BYCOMMAND | MF_GRAYED);
    EnableMenuItem(hMainMenu, IDM_DEVPROPS, MF_BYCOMMAND | MF_GRAYED);
    EnableMenuItem(hMainMenu, IDM_SWITCHVIEW, MF_BYCOMMAND | MF_GRAYED);
}
