
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HMODULE ;
typedef int * HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CloseHandle (int *) ;
 int * CreateEventW (int *,int ,int ,int *) ;
 int * CreateThread (int *,int ,int ,int *,int ,scalar_t__*) ;
 scalar_t__ DINPUT_instance ;
 int EnterCriticalSection (int *) ;
 int FALSE ;
 int GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS ;
 int GetModuleHandleExW (int ,int const*,int *) ;
 int INFINITE ;
 int LeaveCriticalSection (int *) ;
 int PostThreadMessageW (scalar_t__,scalar_t__,int ,int ) ;
 int TRACE (char*,int ) ;
 scalar_t__ WM_USER ;
 int WaitForSingleObject (int *,int ) ;
 int dinput_hook_crit ;
 int direct_input_list ;
 int * hook_thread_event ;
 scalar_t__ hook_thread_id ;
 int hook_thread_proc ;
 int list_count (int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static BOOL check_hook_thread(void)
{
    static HANDLE hook_thread;
    HMODULE module;

    EnterCriticalSection(&dinput_hook_crit);

    TRACE("IDirectInputs left: %d\n", list_count(&direct_input_list));
    if (!list_empty(&direct_input_list) && !hook_thread)
    {
        GetModuleHandleExW(GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS, (const WCHAR*)DINPUT_instance, &module);
        hook_thread_event = CreateEventW(((void*)0), FALSE, FALSE, ((void*)0));
        hook_thread = CreateThread(((void*)0), 0, hook_thread_proc, hook_thread_event, 0, &hook_thread_id);
    }
    else if (list_empty(&direct_input_list) && hook_thread)
    {
        DWORD tid = hook_thread_id;

        if (hook_thread_event)
        {
            WaitForSingleObject(hook_thread_event, INFINITE);
            CloseHandle(hook_thread_event);
            hook_thread_event = ((void*)0);
        }

        hook_thread_id = 0;
        PostThreadMessageW(tid, WM_USER+0x10, 0, 0);
        CloseHandle(hook_thread);
        hook_thread = ((void*)0);
    }

    LeaveCriticalSection(&dinput_hook_crit);
    return hook_thread_id != 0;
}
