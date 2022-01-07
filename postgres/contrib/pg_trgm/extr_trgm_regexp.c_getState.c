
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TrgmStateKey ;
struct TYPE_6__ {int * tentParent; scalar_t__ tentFlags; int * parent; int snumber; scalar_t__ flags; void* enterKeys; void* arcs; } ;
typedef TYPE_1__ TrgmState ;
struct TYPE_7__ {int queue; int nstates; int states; } ;
typedef TYPE_2__ TrgmNFA ;


 int HASH_ENTER ;
 void* NIL ;
 scalar_t__ hash_search (int ,int *,int ,int*) ;
 int lappend (int ,TYPE_1__*) ;

__attribute__((used)) static TrgmState *
getState(TrgmNFA *trgmNFA, TrgmStateKey *key)
{
 TrgmState *state;
 bool found;

 state = (TrgmState *) hash_search(trgmNFA->states, key, HASH_ENTER,
           &found);
 if (!found)
 {

  state->arcs = NIL;
  state->enterKeys = NIL;
  state->flags = 0;

  state->snumber = -(++trgmNFA->nstates);
  state->parent = ((void*)0);
  state->tentFlags = 0;
  state->tentParent = ((void*)0);

  trgmNFA->queue = lappend(trgmNFA->queue, state);
 }
 return state;
}
