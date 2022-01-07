
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct state {struct state* tmp; struct arc* outs; } ;
struct nfa {TYPE_1__* v; } ;
struct arc {struct state* to; struct arc* outchain; } ;
struct TYPE_2__ {int re; } ;


 int NERR (int ) ;
 scalar_t__ NISERR () ;
 int REG_ETOOBIG ;
 scalar_t__ STACK_TOO_DEEP (int ) ;
 int assert (scalar_t__) ;
 int cparc (struct nfa*,struct arc*,struct state*,struct state*) ;
 struct state* newstate (struct nfa*) ;

__attribute__((used)) static void
duptraverse(struct nfa *nfa,
   struct state *s,
   struct state *stmp)
{
 struct arc *a;


 if (STACK_TOO_DEEP(nfa->v->re))
 {
  NERR(REG_ETOOBIG);
  return;
 }

 if (s->tmp != ((void*)0))
  return;

 s->tmp = (stmp == ((void*)0)) ? newstate(nfa) : stmp;
 if (s->tmp == ((void*)0))
 {
  assert(NISERR());
  return;
 }

 for (a = s->outs; a != ((void*)0) && !NISERR(); a = a->outchain)
 {
  duptraverse(nfa, a->to, (struct state *) ((void*)0));
  if (NISERR())
   break;
  assert(a->to->tmp != ((void*)0));
  cparc(nfa, a, s->tmp, a->to->tmp);
 }
}
