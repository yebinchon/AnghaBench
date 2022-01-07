
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
 int REG_ETOOBIG ;
 scalar_t__ STACK_TOO_DEEP (int ) ;
 int assert (int) ;
 int breakconstraintloop (struct nfa*,struct state*) ;
 scalar_t__ isconstraintarc (struct arc*) ;

__attribute__((used)) static int
findconstraintloop(struct nfa *nfa, struct state *s)
{
 struct arc *a;


 if (STACK_TOO_DEEP(nfa->v->re))
 {
  NERR(REG_ETOOBIG);
  return 1;
 }

 if (s->tmp != ((void*)0))
 {

  if (s->tmp == s)
   return 0;

  breakconstraintloop(nfa, s);

  return 1;
 }
 for (a = s->outs; a != ((void*)0); a = a->outchain)
 {
  if (isconstraintarc(a))
  {
   struct state *sto = a->to;

   assert(sto != s);
   s->tmp = sto;
   if (findconstraintloop(nfa, sto))
    return 1;
  }
 }





 s->tmp = s;
 return 0;
}
