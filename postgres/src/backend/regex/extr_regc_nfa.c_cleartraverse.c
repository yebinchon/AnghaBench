
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct state {struct arc* outs; int * tmp; } ;
struct nfa {TYPE_1__* v; } ;
struct arc {struct state* to; struct arc* outchain; } ;
struct TYPE_2__ {int re; } ;


 int NERR (int ) ;
 int REG_ETOOBIG ;
 scalar_t__ STACK_TOO_DEEP (int ) ;

__attribute__((used)) static void
cleartraverse(struct nfa *nfa,
     struct state *s)
{
 struct arc *a;


 if (STACK_TOO_DEEP(nfa->v->re))
 {
  NERR(REG_ETOOBIG);
  return;
 }

 if (s->tmp == ((void*)0))
  return;
 s->tmp = ((void*)0);

 for (a = s->outs; a != ((void*)0); a = a->outchain)
  cleartraverse(nfa, a->to);
}
