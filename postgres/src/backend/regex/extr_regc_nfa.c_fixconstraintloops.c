
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {scalar_t__ nouts; scalar_t__ nins; int flag; int * tmp; struct state* next; struct arc* outs; } ;
struct nfa {struct state* states; } ;
struct arc {struct state* to; struct arc* outchain; } ;
typedef int FILE ;


 scalar_t__ NISERR () ;
 int assert (int ) ;
 int dropstate (struct nfa*,struct state*) ;
 int dumpnfa (struct nfa*,int *) ;
 scalar_t__ findconstraintloop (struct nfa*,struct state*) ;
 int freearc (struct nfa*,struct arc*) ;
 scalar_t__ isconstraintarc (struct arc*) ;

__attribute__((used)) static void
fixconstraintloops(struct nfa *nfa,
       FILE *f)
{
 struct state *s;
 struct state *nexts;
 struct arc *a;
 struct arc *nexta;
 int hasconstraints;







 hasconstraints = 0;
 for (s = nfa->states; s != ((void*)0) && !NISERR(); s = nexts)
 {
  nexts = s->next;

  assert(s->tmp == ((void*)0));
  for (a = s->outs; a != ((void*)0) && !NISERR(); a = nexta)
  {
   nexta = a->outchain;
   if (isconstraintarc(a))
   {
    if (a->to == s)
     freearc(nfa, a);
    else
     hasconstraints = 1;
   }
  }

  if (s->nouts == 0 && !s->flag)
   dropstate(nfa, s);
 }


 if (NISERR() || !hasconstraints)
  return;
restart:
 for (s = nfa->states; s != ((void*)0) && !NISERR(); s = s->next)
 {
  if (findconstraintloop(nfa, s))
   goto restart;
 }

 if (NISERR())
  return;
 for (s = nfa->states; s != ((void*)0); s = nexts)
 {
  nexts = s->next;
  s->tmp = ((void*)0);
  if ((s->nins == 0 || s->nouts == 0) && !s->flag)
   dropstate(nfa, s);
 }

 if (f != ((void*)0))
  dumpnfa(nfa, f);
}
