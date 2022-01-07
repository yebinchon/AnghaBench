
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct state {struct arc* outs; int nouts; } ;
struct nfa {TYPE_1__* v; } ;
struct arc {int to; int co; int type; struct arc* outchain; } ;
struct TYPE_2__ {int re; } ;


 int BULK_ARC_OP_USE_SORT (int ,int ) ;
 scalar_t__ CANCEL_REQUESTED (int ) ;
 int NERR (int ) ;
 scalar_t__ NISERR () ;
 int NOTREACHED ;
 int REG_CANCEL ;
 int assert (int) ;
 int cparc (struct nfa*,struct arc*,struct state*,int ) ;
 int createarc (struct nfa*,int ,int ,struct state*,int ) ;
 int sortouts (struct nfa*,struct state*) ;
 int sortouts_cmp (struct arc**,struct arc**) ;

__attribute__((used)) static void
copyouts(struct nfa *nfa,
   struct state *oldState,
   struct state *newState)
{
 assert(oldState != newState);

 if (!BULK_ARC_OP_USE_SORT(oldState->nouts, newState->nouts))
 {

  struct arc *a;

  for (a = oldState->outs; a != ((void*)0); a = a->outchain)
   cparc(nfa, a, newState, a->to);
 }
 else
 {





  struct arc *oa;
  struct arc *na;





  if (CANCEL_REQUESTED(nfa->v->re))
  {
   NERR(REG_CANCEL);
   return;
  }

  sortouts(nfa, oldState);
  sortouts(nfa, newState);
  if (NISERR())
   return;
  oa = oldState->outs;
  na = newState->outs;
  while (oa != ((void*)0) && na != ((void*)0))
  {
   struct arc *a = oa;

   switch (sortouts_cmp(&oa, &na))
   {
    case -1:

     oa = oa->outchain;
     createarc(nfa, a->type, a->co, newState, a->to);
     break;
    case 0:

     oa = oa->outchain;
     na = na->outchain;
     break;
    case +1:

     na = na->outchain;
     break;
    default:
     assert(NOTREACHED);
   }
  }
  while (oa != ((void*)0))
  {

   struct arc *a = oa;

   oa = oa->outchain;
   createarc(nfa, a->type, a->co, newState, a->to);
  }
 }
}
