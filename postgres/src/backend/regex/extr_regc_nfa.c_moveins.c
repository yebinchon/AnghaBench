
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct state {scalar_t__ nins; struct arc* ins; } ;
struct nfa {TYPE_1__* v; } ;
struct arc {struct arc* inchain; int from; } ;
struct TYPE_2__ {int re; } ;


 int BULK_ARC_OP_USE_SORT (scalar_t__,scalar_t__) ;
 scalar_t__ CANCEL_REQUESTED (int ) ;
 int NERR (int ) ;
 scalar_t__ NISERR () ;
 int NOTREACHED ;
 int REG_CANCEL ;
 int assert (int) ;
 int changearctarget (struct arc*,struct state*) ;
 int cparc (struct nfa*,struct arc*,int ,struct state*) ;
 int freearc (struct nfa*,struct arc*) ;
 int sortins (struct nfa*,struct state*) ;
 int sortins_cmp (struct arc**,struct arc**) ;

__attribute__((used)) static void
moveins(struct nfa *nfa,
  struct state *oldState,
  struct state *newState)
{
 assert(oldState != newState);

 if (!BULK_ARC_OP_USE_SORT(oldState->nins, newState->nins))
 {

  struct arc *a;

  while ((a = oldState->ins) != ((void*)0))
  {
   cparc(nfa, a, a->from, newState);
   freearc(nfa, a);
  }
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

  sortins(nfa, oldState);
  sortins(nfa, newState);
  if (NISERR())
   return;
  oa = oldState->ins;
  na = newState->ins;
  while (oa != ((void*)0) && na != ((void*)0))
  {
   struct arc *a = oa;

   switch (sortins_cmp(&oa, &na))
   {
    case -1:

     oa = oa->inchain;





     changearctarget(a, newState);
     break;
    case 0:

     oa = oa->inchain;
     na = na->inchain;

     freearc(nfa, a);
     break;
    case +1:

     na = na->inchain;
     break;
    default:
     assert(NOTREACHED);
   }
  }
  while (oa != ((void*)0))
  {

   struct arc *a = oa;

   oa = oa->inchain;
   changearctarget(a, newState);
  }
 }

 assert(oldState->nins == 0);
 assert(oldState->ins == ((void*)0));
}
