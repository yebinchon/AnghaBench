
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct arcbatch* next; struct arc* a; } ;
struct state {int noas; struct arc* free; TYPE_2__ oas; } ;
struct nfa {TYPE_1__* v; } ;
struct arcbatch {struct arc* a; struct arcbatch* next; } ;
struct arc {struct arc* freechain; scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ spaceused; } ;


 int ABSIZE ;
 scalar_t__ MALLOC (int) ;
 int NERR (int ) ;
 int REG_ESPACE ;
 int REG_ETOOBIG ;
 scalar_t__ REG_MAX_COMPILE_SPACE ;
 int assert (int ) ;

__attribute__((used)) static struct arc *
allocarc(struct nfa *nfa,
   struct state *s)
{
 struct arc *a;


 if (s->free == ((void*)0) && s->noas < ABSIZE)
 {
  a = &s->oas.a[s->noas];
  s->noas++;
  return a;
 }


 if (s->free == ((void*)0))
 {
  struct arcbatch *newAb;
  int i;

  if (nfa->v->spaceused >= REG_MAX_COMPILE_SPACE)
  {
   NERR(REG_ETOOBIG);
   return ((void*)0);
  }
  newAb = (struct arcbatch *) MALLOC(sizeof(struct arcbatch));
  if (newAb == ((void*)0))
  {
   NERR(REG_ESPACE);
   return ((void*)0);
  }
  nfa->v->spaceused += sizeof(struct arcbatch);
  newAb->next = s->oas.next;
  s->oas.next = newAb;

  for (i = 0; i < ABSIZE; i++)
  {
   newAb->a[i].type = 0;
   newAb->a[i].freechain = &newAb->a[i + 1];
  }
  newAb->a[ABSIZE - 1].freechain = ((void*)0);
  s->free = &newAb->a[0];
 }
 assert(s->free != ((void*)0));

 a = s->free;
 s->free = a->freechain;
 return a;
}
