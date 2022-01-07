
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wasapi_state {int hWake; } ;
struct ao {struct wasapi_state* priv; } ;


 int SetEvent (int ) ;

__attribute__((used)) static void thread_wakeup(void *ptr)
{
    struct ao *ao = ptr;
    struct wasapi_state *state = ao->priv;
    SetEvent(state->hWake);
}
