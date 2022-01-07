
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_2__ {int code; } ;
typedef TYPE_1__ NMHDR ;
typedef int LRESULT ;
typedef scalar_t__ LPARAM ;
typedef int HWND ;
typedef int FileDialogImpl ;


 int FALSE ;

 int notifysink_on_tvn_dropdown (int *,scalar_t__) ;

__attribute__((used)) static LRESULT notifysink_on_wm_notify(FileDialogImpl *This, HWND hwnd, WPARAM wparam, LPARAM lparam)
{
    NMHDR *nmhdr = (NMHDR*)lparam;

    switch(nmhdr->code)
    {
    case 128: return notifysink_on_tvn_dropdown(This, lparam);
    }

    return FALSE;
}
