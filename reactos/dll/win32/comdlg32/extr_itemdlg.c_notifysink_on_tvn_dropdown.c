
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {int id; int hwnd; } ;
typedef TYPE_3__ customctrl ;
typedef scalar_t__ UINT ;
struct TYPE_22__ {int dlg_hwnd; } ;
struct TYPE_17__ {int bottom; } ;
struct TYPE_16__ {int hwndFrom; } ;
struct TYPE_21__ {TYPE_2__ rcButton; TYPE_1__ hdr; } ;
struct TYPE_20__ {int y; int x; int member_1; int member_0; } ;
struct TYPE_19__ {scalar_t__ dwData; } ;
typedef TYPE_4__ TBBUTTON ;
typedef TYPE_5__ POINT ;
typedef TYPE_6__ NMTOOLBARW ;
typedef int LRESULT ;
typedef scalar_t__ LPARAM ;
typedef int HMENU ;
typedef TYPE_7__ FileDialogImpl ;


 int ClientToScreen (int ,TYPE_5__*) ;
 int GetDlgCtrlID (int ) ;
 int SendMessageW (int ,int ,int ,scalar_t__) ;
 int TBDDRET_DEFAULT ;
 int TB_GETBUTTON ;
 int TPM_RETURNCMD ;
 int TRACE (char*,TYPE_7__*,TYPE_3__*,scalar_t__) ;
 scalar_t__ TrackPopupMenu (int ,int ,int ,int ,int ,int ,int *) ;
 int cctrl_event_OnControlActivating (TYPE_7__*,int ) ;
 int cctrl_event_OnItemSelected (TYPE_7__*,int ,scalar_t__) ;
 TYPE_3__* get_cctrl_from_dlgid (TYPE_7__*,int ) ;

__attribute__((used)) static LRESULT notifysink_on_tvn_dropdown(FileDialogImpl *This, LPARAM lparam)
{
    NMTOOLBARW *nmtb = (NMTOOLBARW*)lparam;
    customctrl *ctrl = get_cctrl_from_dlgid(This, GetDlgCtrlID(nmtb->hdr.hwndFrom));
    POINT pt = { 0, nmtb->rcButton.bottom };
    TBBUTTON tbb;
    UINT idcmd;

    TRACE("%p, %p (%lx)\n", This, ctrl, lparam);

    if(ctrl)
    {
        cctrl_event_OnControlActivating(This,ctrl->id);

        SendMessageW(ctrl->hwnd, TB_GETBUTTON, 0, (LPARAM)&tbb);
        ClientToScreen(ctrl->hwnd, &pt);
        idcmd = TrackPopupMenu((HMENU)tbb.dwData, TPM_RETURNCMD, pt.x, pt.y, 0, This->dlg_hwnd, ((void*)0));
        if(idcmd)
            cctrl_event_OnItemSelected(This, ctrl->id, idcmd);
    }

    return TBDDRET_DEFAULT;
}
