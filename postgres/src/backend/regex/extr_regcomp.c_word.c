
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int wordchrs; int nfa; } ;
struct state {int dummy; } ;


 int AHEAD ;
 int BEHIND ;
 int assert (int) ;
 int cloneouts (int ,int ,struct state*,struct state*,int) ;

__attribute__((used)) static void
word(struct vars *v,
  int dir,
  struct state *lp,
  struct state *rp)
{
 assert(dir == AHEAD || dir == BEHIND);
 cloneouts(v->nfa, v->wordchrs, lp, rp, dir);

}
