
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int cm; int nfa; } ;
struct state {int dummy; } ;


 char EOS ;
 scalar_t__ ISERR () ;
 int NEXT () ;
 int SEE (char) ;
 int assert (int) ;
 int brackpart (struct vars*,struct state*,struct state*) ;
 int okcolors (int ,int ) ;

__attribute__((used)) static void
bracket(struct vars *v,
  struct state *lp,
  struct state *rp)
{
 assert(SEE('['));
 NEXT();
 while (!SEE(']') && !SEE(EOS))
  brackpart(v, lp, rp);
 assert(SEE(']') || ISERR());
 okcolors(v->nfa, v->cm);
}
