
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mb ;
typedef int UINT ;
struct TYPE_4__ {int cbSize; int dwLanguageId; int dwStyle; void* lpszCaption; void* lpszText; int hInstance; int hwndOwner; } ;
typedef TYPE_1__ MSGBOXPARAMSW ;
typedef int HWND ;
typedef int HINSTANCE ;


 int LANG_NEUTRAL ;
 void* MAKEINTRESOURCEW (int ) ;
 int MAKELANGID (int ,int ) ;
 int MessageBoxIndirectW (TYPE_1__*) ;
 int SUBLANG_DEFAULT ;
 int ZeroMemory (TYPE_1__*,int) ;

int MessageBoxRes(HWND hWnd, HINSTANCE hInstance, UINT uText, UINT uCaption, UINT uType)
{
    MSGBOXPARAMSW mb;

    ZeroMemory(&mb, sizeof(mb));
    mb.cbSize = sizeof(mb);
    mb.hwndOwner = hWnd;
    mb.hInstance = hInstance;
    mb.lpszText = MAKEINTRESOURCEW(uText);
    mb.lpszCaption = MAKEINTRESOURCEW(uCaption);
    mb.dwStyle = uType;
    mb.dwLanguageId = MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT);

    return MessageBoxIndirectW(&mb);
}
