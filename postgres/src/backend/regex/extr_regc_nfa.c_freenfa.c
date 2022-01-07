
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {struct state* next; scalar_t__ nouts; scalar_t__ nins; } ;
struct nfa {int nstates; int * post; int * pre; int * slast; struct state* free; struct state* states; } ;


 int FREE (struct nfa*) ;
 int destroystate (struct nfa*,struct state*) ;
 int freestate (struct nfa*,struct state*) ;

__attribute__((used)) static void
freenfa(struct nfa *nfa)
{
 struct state *s;

 while ((s = nfa->states) != ((void*)0))
 {
  s->nins = s->nouts = 0;
  freestate(nfa, s);
 }
 while ((s = nfa->free) != ((void*)0))
 {
  nfa->free = s->next;
  destroystate(nfa, s);
 }

 nfa->slast = ((void*)0);
 nfa->nstates = -1;
 nfa->pre = ((void*)0);
 nfa->post = ((void*)0);
 FREE(nfa);
}
