
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct state* next; } ;
struct state {scalar_t__ no; struct state* next; int * outs; int * ins; TYPE_2__ oas; } ;
struct nfa {TYPE_1__* v; } ;
struct arcbatch {scalar_t__ no; struct arcbatch* next; int * outs; int * ins; TYPE_2__ oas; } ;
struct TYPE_3__ {int spaceused; } ;


 int FREE (struct state*) ;
 scalar_t__ FREESTATE ;
 int assert (int) ;

__attribute__((used)) static void
destroystate(struct nfa *nfa,
    struct state *s)
{
 struct arcbatch *ab;
 struct arcbatch *abnext;

 assert(s->no == FREESTATE);
 for (ab = s->oas.next; ab != ((void*)0); ab = abnext)
 {
  abnext = ab->next;
  FREE(ab);
  nfa->v->spaceused -= sizeof(struct arcbatch);
 }
 s->ins = ((void*)0);
 s->outs = ((void*)0);
 s->next = ((void*)0);
 FREE(s);
 nfa->v->spaceused -= sizeof(struct state);
}
