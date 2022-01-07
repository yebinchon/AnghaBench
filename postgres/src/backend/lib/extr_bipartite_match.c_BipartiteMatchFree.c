
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* queue; struct TYPE_4__* distance; struct TYPE_4__* pair_vu; struct TYPE_4__* pair_uv; } ;
typedef TYPE_1__ BipartiteMatchState ;


 int pfree (TYPE_1__*) ;

void
BipartiteMatchFree(BipartiteMatchState *state)
{

 pfree(state->pair_uv);
 pfree(state->pair_vu);
 pfree(state->distance);
 pfree(state->queue);
 pfree(state);
}
