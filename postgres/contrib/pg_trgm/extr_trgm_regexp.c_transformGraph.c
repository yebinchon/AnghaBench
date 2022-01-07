
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int initkey ;
struct TYPE_14__ {void** colors; } ;
struct TYPE_15__ {int nstate; TYPE_1__ prefix; } ;
typedef TYPE_2__ TrgmStateKey ;
struct TYPE_16__ {int flags; } ;
typedef TYPE_3__ TrgmState ;
struct TYPE_17__ {scalar_t__ queue; scalar_t__ arcsCount; int overflowed; int states; TYPE_3__* initState; int regex; scalar_t__ nstates; scalar_t__ keysQueue; } ;
typedef TYPE_4__ TrgmNFA ;
struct TYPE_18__ {int keysize; int entrysize; int hcxt; } ;
typedef TYPE_5__ HASHCTL ;


 void* COLOR_UNKNOWN ;
 int CurrentMemoryContext ;
 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 scalar_t__ MAX_EXPANDED_ARCS ;
 scalar_t__ MAX_EXPANDED_STATES ;
 int MemSet (TYPE_2__*,int ,int) ;
 scalar_t__ NIL ;
 int TSTATE_FIN ;
 int TSTATE_INIT ;
 TYPE_3__* getState (TYPE_4__*,TYPE_2__*) ;
 int hash_create (char*,int,TYPE_5__*,int) ;
 scalar_t__ hash_get_num_entries (int ) ;
 scalar_t__ linitial (scalar_t__) ;
 scalar_t__ list_delete_first (scalar_t__) ;
 int pg_reg_getinitialstate (int ) ;
 int processState (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static void
transformGraph(TrgmNFA *trgmNFA)
{
 HASHCTL hashCtl;
 TrgmStateKey initkey;
 TrgmState *initstate;


 trgmNFA->queue = NIL;
 trgmNFA->keysQueue = NIL;
 trgmNFA->arcsCount = 0;
 trgmNFA->overflowed = 0;


 hashCtl.keysize = sizeof(TrgmStateKey);
 hashCtl.entrysize = sizeof(TrgmState);
 hashCtl.hcxt = CurrentMemoryContext;
 trgmNFA->states = hash_create("Trigram NFA",
          1024,
          &hashCtl,
          HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);
 trgmNFA->nstates = 0;


 MemSet(&initkey, 0, sizeof(initkey));
 initkey.prefix.colors[0] = COLOR_UNKNOWN;
 initkey.prefix.colors[1] = COLOR_UNKNOWN;
 initkey.nstate = pg_reg_getinitialstate(trgmNFA->regex);

 initstate = getState(trgmNFA, &initkey);
 initstate->flags |= TSTATE_INIT;
 trgmNFA->initState = initstate;





 while (trgmNFA->queue != NIL)
 {
  TrgmState *state = (TrgmState *) linitial(trgmNFA->queue);

  trgmNFA->queue = list_delete_first(trgmNFA->queue);





  if (trgmNFA->overflowed)
   state->flags |= TSTATE_FIN;
  else
   processState(trgmNFA, state);


  if (trgmNFA->arcsCount > MAX_EXPANDED_ARCS ||
   hash_get_num_entries(trgmNFA->states) > MAX_EXPANDED_STATES)
   trgmNFA->overflowed = 1;
 }
}
