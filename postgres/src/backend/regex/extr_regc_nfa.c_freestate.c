
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {scalar_t__ nins; scalar_t__ nouts; struct state* next; struct state* prev; scalar_t__ flag; int no; } ;
struct nfa {struct state* free; struct state* states; struct state* slast; } ;


 int FREESTATE ;
 int assert (int) ;

__attribute__((used)) static void
freestate(struct nfa *nfa,
    struct state *s)
{
 assert(s != ((void*)0));
 assert(s->nins == 0 && s->nouts == 0);

 s->no = FREESTATE;
 s->flag = 0;
 if (s->next != ((void*)0))
  s->next->prev = s->prev;
 else
 {
  assert(s == nfa->slast);
  nfa->slast = s->prev;
 }
 if (s->prev != ((void*)0))
  s->prev->next = s->next;
 else
 {
  assert(s == nfa->states);
  nfa->states = s->next;
 }
 s->prev = ((void*)0);
 s->next = nfa->free;
 nfa->free = s;
}
