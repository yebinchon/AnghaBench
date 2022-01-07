
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ WPARAM ;
struct TYPE_9__ {int vkCode; int scanCode; int flags; } ;
struct TYPE_7__ {int dwCoopLevel; int crit; TYPE_1__* dinput; } ;
struct TYPE_8__ {int* DInputKeyState; TYPE_2__ base; int subtype; } ;
struct TYPE_6__ {int evsequence; } ;
typedef TYPE_3__ SysKeyboardImpl ;
typedef int LPDIRECTINPUTDEVICE8A ;
typedef scalar_t__ LPARAM ;
typedef TYPE_4__ KBDLLHOOKSTRUCT ;
typedef int BYTE ;


 int DIDFT_MAKEINSTANCE (int) ;
 int DIDFT_PSHBUTTON ;
 int DIK_NUMLOCK ;
 int DIK_PAUSE ;
 int DIK_RSHIFT ;
 int DIK_SUBTRACT ;
 int DISCL_EXCLUSIVE ;
 int EnterCriticalSection (int *) ;
 int GetCurrentTime () ;
 int LLKHF_EXTENDED ;
 int LLKHF_UP ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,int,int,...) ;




 scalar_t__ WM_KEYDOWN ;
 scalar_t__ WM_KEYUP ;
 scalar_t__ WM_SYSKEYDOWN ;
 scalar_t__ WM_SYSKEYUP ;
 TYPE_3__* impl_from_IDirectInputDevice8A (int ) ;
 int map_dik_code (int,int,int ) ;
 int queue_event (int ,int,int,int ,int ) ;

__attribute__((used)) static int KeyboardCallback( LPDIRECTINPUTDEVICE8A iface, WPARAM wparam, LPARAM lparam )
{
    SysKeyboardImpl *This = impl_from_IDirectInputDevice8A(iface);
    int dik_code, ret = This->base.dwCoopLevel & DISCL_EXCLUSIVE;
    KBDLLHOOKSTRUCT *hook = (KBDLLHOOKSTRUCT *)lparam;
    BYTE new_diks;

    if (wparam != WM_KEYDOWN && wparam != WM_KEYUP &&
        wparam != WM_SYSKEYDOWN && wparam != WM_SYSKEYUP)
        return 0;

    TRACE("(%p) wp %08lx, lp %08lx, vk %02x, scan %02x\n",
          iface, wparam, lparam, hook->vkCode, hook->scanCode);

    switch (hook->vkCode)
    {

        case 129 : dik_code = DIK_RSHIFT; break;
        case 130 : dik_code = DIK_PAUSE; break;
        case 131 : dik_code = DIK_NUMLOCK; break;
        case 128: dik_code = DIK_SUBTRACT; break;
        default:
            dik_code = map_dik_code(hook->scanCode & 0xff, hook->vkCode, This->subtype);
            if (hook->flags & LLKHF_EXTENDED) dik_code |= 0x80;
    }
    new_diks = hook->flags & LLKHF_UP ? 0 : 0x80;


    if (new_diks == This->DInputKeyState[dik_code])
        return ret;

    This->DInputKeyState[dik_code] = new_diks;
    TRACE(" setting %02X to %02X\n", dik_code, This->DInputKeyState[dik_code]);

    EnterCriticalSection(&This->base.crit);
    queue_event(iface, DIDFT_MAKEINSTANCE(dik_code) | DIDFT_PSHBUTTON,
                new_diks, GetCurrentTime(), This->base.dinput->evsequence++);
    LeaveCriticalSection(&This->base.crit);

    return ret;
}
