
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * next; } ;
struct state {struct state* prev; struct state* next; int * tmp; int * outs; scalar_t__ nouts; int * ins; scalar_t__ nins; scalar_t__ flag; scalar_t__ no; scalar_t__ noas; int * free; TYPE_2__ oas; } ;
struct nfa {scalar_t__ nstates; struct state* slast; struct state* states; TYPE_1__* v; struct state* free; } ;
struct TYPE_3__ {scalar_t__ spaceused; int re; } ;


 scalar_t__ CANCEL_REQUESTED (int ) ;
 scalar_t__ MALLOC (int) ;
 int NERR (int ) ;
 int REG_CANCEL ;
 int REG_ESPACE ;
 int REG_ETOOBIG ;
 scalar_t__ REG_MAX_COMPILE_SPACE ;
 int assert (int) ;

__attribute__((used)) static struct state *
newstate(struct nfa *nfa)
{
 struct state *s;






 if (CANCEL_REQUESTED(nfa->v->re))
 {
  NERR(REG_CANCEL);
  return ((void*)0);
 }

 if (nfa->free != ((void*)0))
 {
  s = nfa->free;
  nfa->free = s->next;
 }
 else
 {
  if (nfa->v->spaceused >= REG_MAX_COMPILE_SPACE)
  {
   NERR(REG_ETOOBIG);
   return ((void*)0);
  }
  s = (struct state *) MALLOC(sizeof(struct state));
  if (s == ((void*)0))
  {
   NERR(REG_ESPACE);
   return ((void*)0);
  }
  nfa->v->spaceused += sizeof(struct state);
  s->oas.next = ((void*)0);
  s->free = ((void*)0);
  s->noas = 0;
 }

 assert(nfa->nstates >= 0);
 s->no = nfa->nstates++;
 s->flag = 0;
 if (nfa->states == ((void*)0))
  nfa->states = s;
 s->nins = 0;
 s->ins = ((void*)0);
 s->nouts = 0;
 s->outs = ((void*)0);
 s->tmp = ((void*)0);
 s->next = ((void*)0);
 if (nfa->slast != ((void*)0))
 {
  assert(nfa->slast->next == ((void*)0));
  nfa->slast->next = s;
 }
 s->prev = nfa->slast;
 nfa->slast = s;
 return s;
}
