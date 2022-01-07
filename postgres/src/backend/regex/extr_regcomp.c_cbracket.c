
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int cflags; int nfa; int cm; int nlcolor; } ;
struct state {scalar_t__ nouts; scalar_t__ nins; } ;


 int NOERR () ;
 int PLAIN ;
 int REG_NLSTOP ;
 int assert (int) ;
 int bracket (struct vars*,struct state*,struct state*) ;
 int colorcomplement (int ,int ,int ,struct state*,struct state*,struct state*) ;
 int dropstate (int ,struct state*) ;
 int freestate (int ,struct state*) ;
 int newarc (int ,int ,int ,struct state*,struct state*) ;
 struct state* newstate (int ) ;

__attribute__((used)) static void
cbracket(struct vars *v,
   struct state *lp,
   struct state *rp)
{
 struct state *left = newstate(v->nfa);
 struct state *right = newstate(v->nfa);

 NOERR();
 bracket(v, left, right);
 if (v->cflags & REG_NLSTOP)
  newarc(v->nfa, PLAIN, v->nlcolor, left, right);
 NOERR();

 assert(lp->nouts == 0);





 colorcomplement(v->nfa, v->cm, PLAIN, left, lp, rp);
 NOERR();
 dropstate(v->nfa, left);
 assert(right->nins == 0);
 freestate(v->nfa, right);
}
