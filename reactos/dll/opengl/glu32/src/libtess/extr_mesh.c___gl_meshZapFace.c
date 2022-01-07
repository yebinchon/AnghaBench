
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* anEdge; } ;
struct TYPE_9__ {struct TYPE_9__* next; struct TYPE_9__* prev; TYPE_1__* anEdge; } ;
struct TYPE_8__ {int Oprev; struct TYPE_8__* Onext; TYPE_6__* Org; struct TYPE_8__* Sym; int * Rface; int * Lface; struct TYPE_8__* Lnext; } ;
typedef TYPE_1__ GLUhalfEdge ;
typedef TYPE_2__ GLUface ;


 int KillEdge (TYPE_1__*) ;
 int KillVertex (TYPE_6__*,int *) ;
 int Splice (TYPE_1__*,int ) ;
 int memFree (TYPE_2__*) ;

void __gl_meshZapFace( GLUface *fZap )
{
  GLUhalfEdge *eStart = fZap->anEdge;
  GLUhalfEdge *e, *eNext, *eSym;
  GLUface *fPrev, *fNext;


  eNext = eStart->Lnext;
  do {
    e = eNext;
    eNext = e->Lnext;

    e->Lface = ((void*)0);
    if( e->Rface == ((void*)0) ) {


      if( e->Onext == e ) {
 KillVertex( e->Org, ((void*)0) );
      } else {

 e->Org->anEdge = e->Onext;
 Splice( e, e->Oprev );
      }
      eSym = e->Sym;
      if( eSym->Onext == eSym ) {
 KillVertex( eSym->Org, ((void*)0) );
      } else {

 eSym->Org->anEdge = eSym->Onext;
 Splice( eSym, eSym->Oprev );
      }
      KillEdge( e );
    }
  } while( e != eStart );


  fPrev = fZap->prev;
  fNext = fZap->next;
  fNext->prev = fPrev;
  fPrev->next = fNext;

  memFree( fZap );
}
