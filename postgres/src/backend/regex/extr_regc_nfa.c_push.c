
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {scalar_t__ nouts; int nins; struct state* tmp; struct arc* outs; struct arc* ins; scalar_t__ flag; } ;
struct nfa {int dummy; } ;
struct arc {struct state* to; struct state* from; struct arc* outchain; } ;




 scalar_t__ NISERR () ;
 int NOTREACHED ;

 int assert (int) ;
 int combine (struct arc*,struct arc*) ;
 int copyouts (struct nfa*,struct state*,struct state*) ;
 int cparc (struct nfa*,struct arc*,struct state*,struct state*) ;
 int freearc (struct nfa*,struct arc*) ;
 int moveouts (struct nfa*,struct state*,struct state*) ;
 struct state* newstate (struct nfa*) ;

__attribute__((used)) static int
push(struct nfa *nfa,
  struct arc *con,
  struct state **intermediates)
{
 struct state *from = con->from;
 struct state *to = con->to;
 struct arc *a;
 struct arc *nexta;
 struct state *s;

 assert(to != from);
 if (to->flag)
  return 0;
 if (to->nouts == 0)
 {
  freearc(nfa, con);
  return 1;
 }






 if (to->nins > 1)
 {
  s = newstate(nfa);
  if (NISERR())
   return 0;
  copyouts(nfa, to, s);
  cparc(nfa, con, from, s);
  freearc(nfa, con);
  if (NISERR())
   return 0;
  to = s;
  con = to->ins;
 }
 assert(to->nins == 1);


 for (a = to->outs; a != ((void*)0) && !NISERR(); a = nexta)
 {
  nexta = a->outchain;
  switch (combine(con, a))
  {
   case 129:
    freearc(nfa, a);
    break;
   case 128:
    break;
   case 130:

    for (s = *intermediates; s != ((void*)0); s = s->tmp)
    {
     assert(s->nins > 0 && s->nouts > 0);
     if (s->ins->from == from && s->outs->to == a->to)
      break;
    }
    if (s == ((void*)0))
    {
     s = newstate(nfa);
     if (NISERR())
      return 0;
     s->tmp = *intermediates;
     *intermediates = s;
    }
    cparc(nfa, con, s, a->to);
    cparc(nfa, a, from, s);
    freearc(nfa, a);
    break;
   default:
    assert(NOTREACHED);
    break;
  }
 }


 moveouts(nfa, to, from);
 freearc(nfa, con);

 return 1;
}
