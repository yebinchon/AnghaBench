
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct state {scalar_t__ nouts; scalar_t__ nins; struct arc* ins; struct arc* outs; } ;
struct nfa {TYPE_1__* v; } ;
struct arc {scalar_t__ co; int type; struct state* from; struct arc* inchain; struct state* to; struct arc* outchain; } ;
typedef scalar_t__ color ;
struct TYPE_2__ {int re; } ;


 scalar_t__ CANCEL_REQUESTED (int ) ;
 int NERR (int ) ;
 int REG_CANCEL ;
 int assert (int) ;
 int createarc (struct nfa*,int,scalar_t__,struct state*,struct state*) ;

__attribute__((used)) static void
newarc(struct nfa *nfa,
    int t,
    color co,
    struct state *from,
    struct state *to)
{
 struct arc *a;

 assert(from != ((void*)0) && to != ((void*)0));






 if (CANCEL_REQUESTED(nfa->v->re))
 {
  NERR(REG_CANCEL);
  return;
 }


 if (from->nouts <= to->nins)
 {
  for (a = from->outs; a != ((void*)0); a = a->outchain)
   if (a->to == to && a->co == co && a->type == t)
    return;
 }
 else
 {
  for (a = to->ins; a != ((void*)0); a = a->inchain)
   if (a->from == from && a->co == co && a->type == t)
    return;
 }


 createarc(nfa, t, co, from, to);
}
