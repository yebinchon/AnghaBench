
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_2__ {int hMainWnd; int hInstance; } ;
typedef int LPARAM ;
typedef int * HWND ;
typedef int * HICON ;


 int BM_SETIMAGE ;
 int DestroyIcon (int *) ;
 int FALSE ;
 int * GetDlgItem (int ,int) ;
 TYPE_1__ Globals ;
 scalar_t__ IMAGE_ICON ;
 int LR_DEFAULTCOLOR ;
 scalar_t__ LoadImageW (int ,int ,scalar_t__,int,int,int ) ;
 int MAKEINTRESOURCEW (int) ;
 int SendMessageW (int *,int ,int ,int ) ;
 int TRUE ;

int OSK_SetImage(int IdDlgItem, int IdResource)
{
    HICON hIcon;
    HWND hWndItem;

    hIcon = (HICON)LoadImageW(Globals.hInstance, MAKEINTRESOURCEW(IdResource),
                              IMAGE_ICON, 16, 16, LR_DEFAULTCOLOR);
    if (hIcon == ((void*)0))
        return FALSE;

    hWndItem = GetDlgItem(Globals.hMainWnd, IdDlgItem);
    if (hWndItem == ((void*)0))
    {
        DestroyIcon(hIcon);
        return FALSE;
    }

    SendMessageW(hWndItem, BM_SETIMAGE, (WPARAM)IMAGE_ICON, (LPARAM)hIcon);



    return TRUE;
}
