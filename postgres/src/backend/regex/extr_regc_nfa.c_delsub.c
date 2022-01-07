
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {scalar_t__ nouts; scalar_t__ nins; scalar_t__ no; struct state* tmp; } ;
struct nfa {int dummy; } ;


 scalar_t__ FREESTATE ;
 scalar_t__ NISERR () ;
 int assert (int) ;
 int deltraverse (struct nfa*,struct state*,struct state*) ;

__attribute__((used)) static void
delsub(struct nfa *nfa,
    struct state *lp,
    struct state *rp)
{
 assert(lp != rp);

 rp->tmp = rp;

 deltraverse(nfa, lp, lp);
 if (NISERR())
  return;
 assert(lp->nouts == 0 && rp->nins == 0);
 assert(lp->no != FREESTATE && rp->no != FREESTATE);

 rp->tmp = ((void*)0);
 lp->tmp = ((void*)0);
}
