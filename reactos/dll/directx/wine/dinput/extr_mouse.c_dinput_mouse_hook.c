
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int WPARAM ;
struct TYPE_13__ {int x; int y; } ;
struct TYPE_20__ {int mouseData; TYPE_1__ pt; } ;
struct TYPE_19__ {int x; int y; } ;
struct TYPE_15__ {TYPE_2__* user_df; } ;
struct TYPE_17__ {int dwCoopLevel; int crit; TYPE_4__* dinput; TYPE_3__ data_format; } ;
struct TYPE_12__ {int lX; int lY; int lZ; int* rgbButtons; } ;
struct TYPE_18__ {int clipped; TYPE_5__ base; TYPE_10__ m_state; int need_warp; int warp_override; } ;
struct TYPE_16__ {int evsequence; } ;
struct TYPE_14__ {int dwFlags; } ;
typedef TYPE_6__ SysMouseImpl ;
typedef TYPE_7__ POINT ;
typedef TYPE_8__ MSLLHOOKSTRUCT ;
typedef int LPDIRECTINPUTDEVICE8A ;
typedef scalar_t__ LPARAM ;


 int DIDFT_MAKEINSTANCE (scalar_t__) ;
 int DIDFT_PSHBUTTON ;
 int DIDFT_RELAXIS ;
 int DIDF_ABSAXIS ;
 int DISCL_EXCLUSIVE ;
 int EnterCriticalSection (int *) ;
 int GetCurrentTime () ;
 int GetCursorPos (TYPE_7__*) ;
 scalar_t__ HIWORD (int ) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,int,int,int) ;
 int TRUE ;
 int WARP_DISABLE ;
 int WARP_FORCE_ON ;
 scalar_t__ WINE_MOUSE_BUTTONS_INSTANCE ;
 scalar_t__ WINE_MOUSE_X_AXIS_INSTANCE ;
 scalar_t__ WINE_MOUSE_Y_AXIS_INSTANCE ;
 scalar_t__ WINE_MOUSE_Z_AXIS_INSTANCE ;
 int _dump_mouse_state (TYPE_10__*) ;
 TYPE_6__* impl_from_IDirectInputDevice8A (int ) ;
 int queue_event (int ,int,int,int ,int ) ;

__attribute__((used)) static int dinput_mouse_hook( LPDIRECTINPUTDEVICE8A iface, WPARAM wparam, LPARAM lparam )
{
    MSLLHOOKSTRUCT *hook = (MSLLHOOKSTRUCT *)lparam;
    SysMouseImpl* This = impl_from_IDirectInputDevice8A(iface);
    int wdata = 0, inst_id = -1, ret = 0;

    TRACE("msg %lx @ (%d %d)\n", wparam, hook->pt.x, hook->pt.y);

    EnterCriticalSection(&This->base.crit);

    switch(wparam) {
        case 133:
        {
            POINT pt, pt1;

            GetCursorPos(&pt);
            This->m_state.lX += pt.x = hook->pt.x - pt.x;
            This->m_state.lY += pt.y = hook->pt.y - pt.y;

            if (This->base.data_format.user_df->dwFlags & DIDF_ABSAXIS)
            {
                pt1.x = This->m_state.lX;
                pt1.y = This->m_state.lY;
            } else
                pt1 = pt;

            if (pt.x)
            {
                inst_id = DIDFT_MAKEINSTANCE(WINE_MOUSE_X_AXIS_INSTANCE) | DIDFT_RELAXIS;
                wdata = pt1.x;
            }
            if (pt.y)
            {

                if (inst_id != -1)
                    queue_event(iface, inst_id,
                                wdata, GetCurrentTime(), This->base.dinput->evsequence);
                inst_id = DIDFT_MAKEINSTANCE(WINE_MOUSE_Y_AXIS_INSTANCE) | DIDFT_RELAXIS;
                wdata = pt1.y;
            }

            if (pt.x || pt.y)
            {
                if ((This->warp_override == WARP_FORCE_ON) ||
                    (This->warp_override != WARP_DISABLE && (This->base.dwCoopLevel & DISCL_EXCLUSIVE)))
                    This->need_warp = TRUE;
            }
            break;
        }
        case 132:
            inst_id = DIDFT_MAKEINSTANCE(WINE_MOUSE_Z_AXIS_INSTANCE) | DIDFT_RELAXIS;
            This->m_state.lZ += wdata = (short)HIWORD(hook->mouseData);


            ret = This->clipped;
            break;
        case 137:
            inst_id = DIDFT_MAKEINSTANCE(WINE_MOUSE_BUTTONS_INSTANCE + 0) | DIDFT_PSHBUTTON;
            This->m_state.rgbButtons[0] = wdata = 0x80;
     break;
 case 136:
            inst_id = DIDFT_MAKEINSTANCE(WINE_MOUSE_BUTTONS_INSTANCE + 0) | DIDFT_PSHBUTTON;
            This->m_state.rgbButtons[0] = wdata = 0x00;
     break;
 case 131:
            inst_id = DIDFT_MAKEINSTANCE(WINE_MOUSE_BUTTONS_INSTANCE + 1) | DIDFT_PSHBUTTON;
            This->m_state.rgbButtons[1] = wdata = 0x80;
     break;
 case 130:
            inst_id = DIDFT_MAKEINSTANCE(WINE_MOUSE_BUTTONS_INSTANCE + 1) | DIDFT_PSHBUTTON;
            This->m_state.rgbButtons[1] = wdata = 0x00;
     break;
 case 135:
            inst_id = DIDFT_MAKEINSTANCE(WINE_MOUSE_BUTTONS_INSTANCE + 2) | DIDFT_PSHBUTTON;
            This->m_state.rgbButtons[2] = wdata = 0x80;
     break;
 case 134:
            inst_id = DIDFT_MAKEINSTANCE(WINE_MOUSE_BUTTONS_INSTANCE + 2) | DIDFT_PSHBUTTON;
            This->m_state.rgbButtons[2] = wdata = 0x00;
     break;
        case 129:
            inst_id = DIDFT_MAKEINSTANCE(WINE_MOUSE_BUTTONS_INSTANCE + 2 + HIWORD(hook->mouseData)) | DIDFT_PSHBUTTON;
            This->m_state.rgbButtons[2 + HIWORD(hook->mouseData)] = wdata = 0x80;
            break;
        case 128:
            inst_id = DIDFT_MAKEINSTANCE(WINE_MOUSE_BUTTONS_INSTANCE + 2 + HIWORD(hook->mouseData)) | DIDFT_PSHBUTTON;
            This->m_state.rgbButtons[2 + HIWORD(hook->mouseData)] = wdata = 0x00;
            break;
    }


    if (inst_id != -1)
    {
        _dump_mouse_state(&This->m_state);
        queue_event(iface, inst_id,
                    wdata, GetCurrentTime(), This->base.dinput->evsequence++);
    }

    LeaveCriticalSection(&This->base.crit);
    return ret;
}
