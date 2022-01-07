
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int TrgmStateKey ;
struct TYPE_9__ {int flags; int stateKey; } ;
typedef TYPE_1__ TrgmState ;
struct TYPE_10__ {scalar_t__ keysQueue; } ;
typedef TYPE_2__ TrgmNFA ;


 scalar_t__ NIL ;
 int TSTATE_FIN ;
 int addArcs (TYPE_2__*,TYPE_1__*) ;
 int addKey (TYPE_2__*,TYPE_1__*,int *) ;
 scalar_t__ linitial (scalar_t__) ;
 scalar_t__ list_delete_first (scalar_t__) ;

__attribute__((used)) static void
processState(TrgmNFA *trgmNFA, TrgmState *state)
{

 trgmNFA->keysQueue = NIL;





 addKey(trgmNFA, state, &state->stateKey);
 while (trgmNFA->keysQueue != NIL && !(state->flags & TSTATE_FIN))
 {
  TrgmStateKey *key = (TrgmStateKey *) linitial(trgmNFA->keysQueue);

  trgmNFA->keysQueue = list_delete_first(trgmNFA->keysQueue);
  addKey(trgmNFA, state, key);
 }





 if (!(state->flags & TSTATE_FIN))
  addArcs(trgmNFA, state);
}
