
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_3__ {int dwCoopLevel; } ;
typedef int LPDIRECTINPUTDEVICE8W ;
typedef TYPE_1__ IDirectInputDeviceImpl ;
typedef int * HHOOK ;
typedef scalar_t__ BOOL ;


 int CloseHandle (int *) ;
 int DINPUT_instance ;
 int DISCL_FOREGROUND ;
 int EnterCriticalSection (int *) ;
 int GetCurrentThreadId () ;
 int INFINITE ;
 int LeaveCriticalSection (int *) ;
 int PostThreadMessageW (int ,scalar_t__,int,int ) ;
 int * SetWindowsHookExW (int ,int ,int ,int ) ;
 int UnhookWindowsHookEx (int *) ;
 int WH_CALLWNDPROC ;
 scalar_t__ WM_USER ;
 int WaitForSingleObject (int *,int ) ;
 int callwndproc_proc ;
 int dinput_hook_crit ;
 int * hook_thread_event ;
 int hook_thread_id ;
 TYPE_1__* impl_from_IDirectInputDevice8W (int ) ;

void check_dinput_hooks(LPDIRECTINPUTDEVICE8W iface, BOOL acquired)
{
    static HHOOK callwndproc_hook;
    static ULONG foreground_cnt;
    IDirectInputDeviceImpl *dev = impl_from_IDirectInputDevice8W(iface);

    EnterCriticalSection(&dinput_hook_crit);

    if (dev->dwCoopLevel & DISCL_FOREGROUND)
    {
        if (acquired)
            foreground_cnt++;
        else
            foreground_cnt--;
    }

    if (foreground_cnt && !callwndproc_hook)
        callwndproc_hook = SetWindowsHookExW( WH_CALLWNDPROC, callwndproc_proc,
                                              DINPUT_instance, GetCurrentThreadId() );
    else if (!foreground_cnt && callwndproc_hook)
    {
        UnhookWindowsHookEx( callwndproc_hook );
        callwndproc_hook = ((void*)0);
    }

    if (hook_thread_event)
    {
        WaitForSingleObject(hook_thread_event, INFINITE);
        CloseHandle(hook_thread_event);
        hook_thread_event = ((void*)0);
    }

    PostThreadMessageW( hook_thread_id, WM_USER+0x10, 1, 0 );

    LeaveCriticalSection(&dinput_hook_crit);
}
