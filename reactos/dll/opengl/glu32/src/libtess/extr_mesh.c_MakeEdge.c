
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * activeRegion; scalar_t__ winding; int * Lface; int * Org; struct TYPE_5__* Lnext; struct TYPE_5__* Onext; struct TYPE_5__* Sym; struct TYPE_5__* next; } ;
struct TYPE_6__ {TYPE_1__ eSym; TYPE_1__ e; } ;
typedef TYPE_1__ GLUhalfEdge ;
typedef TYPE_2__ EdgePair ;


 scalar_t__ memAlloc (int) ;

__attribute__((used)) static GLUhalfEdge *MakeEdge( GLUhalfEdge *eNext )
{
  GLUhalfEdge *e;
  GLUhalfEdge *eSym;
  GLUhalfEdge *ePrev;
  EdgePair *pair = (EdgePair *)memAlloc( sizeof( EdgePair ));
  if (pair == ((void*)0)) return ((void*)0);

  e = &pair->e;
  eSym = &pair->eSym;


  if( eNext->Sym < eNext ) { eNext = eNext->Sym; }




  ePrev = eNext->Sym->next;
  eSym->next = ePrev;
  ePrev->Sym->next = e;
  e->next = eNext;
  eNext->Sym->next = eSym;

  e->Sym = eSym;
  e->Onext = e;
  e->Lnext = eSym;
  e->Org = ((void*)0);
  e->Lface = ((void*)0);
  e->winding = 0;
  e->activeRegion = ((void*)0);

  eSym->Sym = e;
  eSym->Onext = eSym;
  eSym->Lnext = e;
  eSym->Org = ((void*)0);
  eSym->Lface = ((void*)0);
  eSym->winding = 0;
  eSym->activeRegion = ((void*)0);

  return e;
}
