
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct state {scalar_t__ nouts; scalar_t__ nins; scalar_t__ no; struct state* tmp; struct arc* outs; } ;
struct nfa {TYPE_1__* v; } ;
struct arc {struct state* to; } ;
struct TYPE_2__ {int re; } ;


 scalar_t__ FREESTATE ;
 int NERR (int ) ;
 scalar_t__ NISERR () ;
 int REG_ETOOBIG ;
 scalar_t__ STACK_TOO_DEEP (int ) ;
 int assert (int) ;
 int freearc (struct nfa*,struct arc*) ;
 int freestate (struct nfa*,struct state*) ;

__attribute__((used)) static void
deltraverse(struct nfa *nfa,
   struct state *leftend,
   struct state *s)
{
 struct arc *a;
 struct state *to;


 if (STACK_TOO_DEEP(nfa->v->re))
 {
  NERR(REG_ETOOBIG);
  return;
 }

 if (s->nouts == 0)
  return;
 if (s->tmp != ((void*)0))
  return;

 s->tmp = s;

 while ((a = s->outs) != ((void*)0))
 {
  to = a->to;
  deltraverse(nfa, leftend, to);
  if (NISERR())
   return;
  assert(to->nouts == 0 || to->tmp != ((void*)0));
  freearc(nfa, a);
  if (to->nins == 0 && to->tmp == ((void*)0))
  {
   assert(to->nouts == 0);
   freestate(nfa, to);
  }
 }

 assert(s->no != FREESTATE);
 assert(s == leftend || s->nins != 0);
 assert(s->nouts == 0);

 s->tmp = ((void*)0);
}
