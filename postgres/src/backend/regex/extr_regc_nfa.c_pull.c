
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {scalar_t__ nins; int nouts; struct state* tmp; struct arc* outs; struct arc* ins; scalar_t__ flag; } ;
struct nfa {int dummy; } ;
struct arc {struct state* from; struct state* to; struct arc* inchain; } ;




 scalar_t__ NISERR () ;
 int NOTREACHED ;

 int assert (int) ;
 int combine (struct arc*,struct arc*) ;
 int copyins (struct nfa*,struct state*,struct state*) ;
 int cparc (struct nfa*,struct arc*,struct state*,struct state*) ;
 int freearc (struct nfa*,struct arc*) ;
 int moveins (struct nfa*,struct state*,struct state*) ;
 struct state* newstate (struct nfa*) ;

__attribute__((used)) static int
pull(struct nfa *nfa,
  struct arc *con,
  struct state **intermediates)
{
 struct state *from = con->from;
 struct state *to = con->to;
 struct arc *a;
 struct arc *nexta;
 struct state *s;

 assert(from != to);
 if (from->flag)
  return 0;
 if (from->nins == 0)
 {
  freearc(nfa, con);
  return 1;
 }






 if (from->nouts > 1)
 {
  s = newstate(nfa);
  if (NISERR())
   return 0;
  copyins(nfa, from, s);
  cparc(nfa, con, s, to);
  freearc(nfa, con);
  if (NISERR())
   return 0;
  from = s;
  con = from->outs;
 }
 assert(from->nouts == 1);


 for (a = from->ins; a != ((void*)0) && !NISERR(); a = nexta)
 {
  nexta = a->inchain;
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
     if (s->ins->from == a->from && s->outs->to == to)
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
    cparc(nfa, con, a->from, s);
    cparc(nfa, a, s, to);
    freearc(nfa, a);
    break;
   default:
    assert(NOTREACHED);
    break;
  }
 }


 moveins(nfa, from, to);
 freearc(nfa, con);

 return 1;
}
