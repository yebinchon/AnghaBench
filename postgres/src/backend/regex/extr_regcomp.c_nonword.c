
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int wordchrs; int cm; int nfa; } ;
struct state {int dummy; } ;


 int AHEAD ;
 int BEHIND ;
 int assert (int) ;
 int colorcomplement (int ,int ,int,int ,struct state*,struct state*) ;
 int newarc (int ,int,int,struct state*,struct state*) ;

__attribute__((used)) static void
nonword(struct vars *v,
  int dir,
  struct state *lp,
  struct state *rp)
{
 int anchor = (dir == AHEAD) ? '$' : '^';

 assert(dir == AHEAD || dir == BEHIND);
 newarc(v->nfa, anchor, 1, lp, rp);
 newarc(v->nfa, anchor, 0, lp, rp);
 colorcomplement(v->nfa, v->cm, dir, v->wordchrs, lp, rp);

}
