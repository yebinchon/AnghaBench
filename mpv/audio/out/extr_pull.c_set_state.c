
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao_pull_state {int state; } ;
struct ao {struct ao_pull_state* api_priv; } ;


 int AO_STATE_BUSY ;
 scalar_t__ atomic_compare_exchange_strong (int *,int*,int) ;
 int atomic_load (int *) ;
 int mp_sleep_us (int) ;

__attribute__((used)) static void set_state(struct ao *ao, int new_state)
{
    struct ao_pull_state *p = ao->api_priv;
    while (1) {
        int old = atomic_load(&p->state);
        if (old == AO_STATE_BUSY) {

            mp_sleep_us(1);
            continue;
        }
        if (atomic_compare_exchange_strong(&p->state, &old, new_state))
            break;
    }
}
