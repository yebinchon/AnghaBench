
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct state {size_t no; struct state* tmp; } ;
struct nfa {TYPE_1__* v; } ;
struct arc {scalar_t__ type; struct state* from; struct arc* inchain; } ;
struct TYPE_2__ {int re; } ;


 scalar_t__ EMPTY ;
 int NERR (int ) ;
 int REG_ETOOBIG ;
 scalar_t__ STACK_TOO_DEEP (int ) ;

__attribute__((used)) static struct state *
emptyreachable(struct nfa *nfa,
      struct state *s,
      struct state *lastfound,
      struct arc **inarcsorig)
{
 struct arc *a;


 if (STACK_TOO_DEEP(nfa->v->re))
 {
  NERR(REG_ETOOBIG);
  return lastfound;
 }

 s->tmp = lastfound;
 lastfound = s;
 for (a = inarcsorig[s->no]; a != ((void*)0); a = a->inchain)
 {
  if (a->type == EMPTY && a->from->tmp == ((void*)0))
   lastfound = emptyreachable(nfa, a->from, lastfound, inarcsorig);
 }
 return lastfound;
}
