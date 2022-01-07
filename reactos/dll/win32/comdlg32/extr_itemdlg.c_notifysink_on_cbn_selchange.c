
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; int hwnd; } ;
typedef TYPE_1__ customctrl ;
typedef int WPARAM ;
typedef int UINT ;
typedef int LRESULT ;
typedef int HWND ;
typedef int FileDialogImpl ;


 int CB_GETCURSEL ;
 int CB_GETITEMDATA ;
 int LOWORD (int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,int *,TYPE_1__*,int ) ;
 int TRUE ;
 int cctrl_event_OnItemSelected (int *,int ,int ) ;
 TYPE_1__* get_cctrl_from_dlgid (int *,int ) ;

__attribute__((used)) static LRESULT notifysink_on_cbn_selchange(FileDialogImpl *This, HWND hwnd, WPARAM wparam)
{
    customctrl *ctrl = get_cctrl_from_dlgid(This, LOWORD(wparam));
    TRACE("%p, %p (%lx)\n", This, ctrl, wparam);

    if(ctrl)
    {
        UINT index = SendMessageW(ctrl->hwnd, CB_GETCURSEL, 0, 0);
        UINT selid = SendMessageW(ctrl->hwnd, CB_GETITEMDATA, index, 0);

        cctrl_event_OnItemSelected(This, ctrl->id, selid);
    }
    return TRUE;
}
