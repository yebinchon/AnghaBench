
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wasapi_state {int thread_state; } ;
struct ao {struct wasapi_state* priv; } ;
typedef enum wasapi_thread_state { ____Placeholder_wasapi_thread_state } wasapi_thread_state ;


 int atomic_store (int *,int) ;
 int thread_wakeup (struct ao*) ;

__attribute__((used)) static void set_thread_state(struct ao *ao,
                             enum wasapi_thread_state thread_state)
{
    struct wasapi_state *state = ao->priv;
    atomic_store(&state->thread_state, thread_state);
    thread_wakeup(ao);
}
