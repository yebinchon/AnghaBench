
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_w32_state {int window; } ;


 scalar_t__ GetCurrentThreadId () ;
 scalar_t__ GetWindowThreadProcessId (int ,int *) ;
 int PostMessageW (int ,int ,int ,int ) ;
 int SendNotifyMessageW (int ,int ,int ,int ) ;
 int WM_NULL ;

__attribute__((used)) static void wakeup_gui_thread(void *ctx)
{
    struct vo_w32_state *w32 = ctx;

    if (GetWindowThreadProcessId(w32->window, ((void*)0)) == GetCurrentThreadId()) {
        PostMessageW(w32->window, WM_NULL, 0, 0);
    } else {


        SendNotifyMessageW(w32->window, WM_NULL, 0, 0);
    }
}
