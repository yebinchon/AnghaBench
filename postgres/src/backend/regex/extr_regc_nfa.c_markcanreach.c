
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct state {struct arc* ins; struct state* tmp; } ;
struct nfa {TYPE_1__* v; } ;
struct arc {struct state* from; struct arc* inchain; } ;
struct TYPE_2__ {int re; } ;


 int NERR (int ) ;
 int REG_ETOOBIG ;
 scalar_t__ STACK_TOO_DEEP (int ) ;

__attribute__((used)) static void
markcanreach(struct nfa *nfa,
    struct state *s,
    struct state *okay,
    struct state *mark)
{
 struct arc *a;


 if (STACK_TOO_DEEP(nfa->v->re))
 {
  NERR(REG_ETOOBIG);
  return;
 }

 if (s->tmp != okay)
  return;
 s->tmp = mark;

 for (a = s->ins; a != ((void*)0); a = a->inchain)
  markcanreach(nfa, a->from, okay, mark);
}
