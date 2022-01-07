
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int adapters_count; int NUM_CHANNELS; TYPE_1__* adapters; struct TYPE_6__* channels; struct TYPE_6__* name; } ;
typedef TYPE_2__ dvb_state_t ;
struct TYPE_5__ {TYPE_2__* list; } ;


 int free (TYPE_2__*) ;

void dvb_free_state(dvb_state_t *state)
{
    int i, j;

    for (i = 0; i < state->adapters_count; i++) {
        if (!state->adapters[i].list)
            continue;
        if (state->adapters[i].list->channels) {
            for (j = 0; j < state->adapters[i].list->NUM_CHANNELS; j++)
                free(state->adapters[i].list->channels[j].name);
            free(state->adapters[i].list->channels);
        }
        free(state->adapters[i].list);
    }
    free(state);
}
