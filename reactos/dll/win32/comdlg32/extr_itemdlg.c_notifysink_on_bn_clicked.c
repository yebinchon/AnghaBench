
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int id; int hwnd; } ;
typedef TYPE_1__ customctrl ;
typedef int WPARAM ;
typedef int LRESULT ;
typedef int HWND ;
typedef int FileDialogImpl ;
typedef int BOOL ;


 int BM_GETCHECK ;
 scalar_t__ BST_CHECKED ;
 scalar_t__ IDLG_CCTRL_CHECKBUTTON ;
 int LOWORD (int ) ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,int *,int ) ;
 int TRUE ;
 int cctrl_event_OnButtonClicked (int *,int ) ;
 int cctrl_event_OnCheckButtonToggled (int *,int ,int) ;
 TYPE_1__* get_cctrl_from_dlgid (int *,int ) ;

__attribute__((used)) static LRESULT notifysink_on_bn_clicked(FileDialogImpl *This, HWND hwnd, WPARAM wparam)
{
    customctrl *ctrl = get_cctrl_from_dlgid(This, LOWORD(wparam));

    TRACE("%p, %lx\n", This, wparam);

    if(ctrl)
    {
        if(ctrl->type == IDLG_CCTRL_CHECKBUTTON)
        {
            BOOL checked = (SendMessageW(ctrl->hwnd, BM_GETCHECK, 0, 0) == BST_CHECKED);
            cctrl_event_OnCheckButtonToggled(This, ctrl->id, checked);
        }
        else
            cctrl_event_OnButtonClicked(This, ctrl->id);
    }

    return TRUE;
}
