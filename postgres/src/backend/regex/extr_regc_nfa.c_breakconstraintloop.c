
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {scalar_t__ nouts; struct arc* outs; struct state* tmp; struct state* next; } ;
struct nfa {int nstates; struct state* states; } ;
struct arc {struct state* to; struct arc* outchain; struct state* from; } ;


 int NISERR () ;
 int assert (int) ;
 int clonesuccessorstates (struct nfa*,struct state*,struct state*,struct state*,struct arc*,int *,int *,int ) ;
 int cparc (struct nfa*,struct arc*,struct state*,struct state*) ;
 int freearc (struct nfa*,struct arc*) ;
 int freestate (struct nfa*,struct state*) ;
 scalar_t__ isconstraintarc (struct arc*) ;
 struct state* newstate (struct nfa*) ;

__attribute__((used)) static void
breakconstraintloop(struct nfa *nfa, struct state *sinitial)
{
 struct state *s;
 struct state *shead;
 struct state *stail;
 struct state *sclone;
 struct state *nexts;
 struct arc *refarc;
 struct arc *a;
 struct arc *nexta;







 refarc = ((void*)0);
 s = sinitial;
 do
 {
  nexts = s->tmp;
  assert(nexts != s);
  if (refarc == ((void*)0))
  {
   int narcs = 0;

   for (a = s->outs; a != ((void*)0); a = a->outchain)
   {
    if (a->to == nexts && isconstraintarc(a))
    {
     refarc = a;
     narcs++;
    }
   }
   assert(narcs > 0);
   if (narcs > 1)
    refarc = ((void*)0);
  }
  s = nexts;
 } while (s != sinitial);

 if (refarc)
 {

  shead = refarc->from;
  stail = refarc->to;
  assert(stail == shead->tmp);
 }
 else
 {

  shead = sinitial;
  stail = sinitial->tmp;
 }






 for (s = nfa->states; s != ((void*)0); s = s->next)
  s->tmp = ((void*)0);




 sclone = newstate(nfa);
 if (sclone == ((void*)0))
 {
  assert(NISERR());
  return;
 }

 clonesuccessorstates(nfa, stail, sclone, shead, refarc,
       ((void*)0), ((void*)0), nfa->nstates);

 if (NISERR())
  return;






 if (sclone->nouts == 0)
 {
  freestate(nfa, sclone);
  sclone = ((void*)0);
 }





 for (a = shead->outs; a != ((void*)0); a = nexta)
 {
  nexta = a->outchain;
  if (a->to == stail && isconstraintarc(a))
  {
   if (sclone)
    cparc(nfa, a, shead, sclone);
   freearc(nfa, a);
   if (NISERR())
    break;
  }
 }
}
