
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int inside; int marked; int * trail; int * data; TYPE_1__* anEdge; struct TYPE_7__* prev; struct TYPE_7__* next; } ;
struct TYPE_6__ {struct TYPE_6__* Lnext; TYPE_2__* Lface; } ;
typedef TYPE_1__ GLUhalfEdge ;
typedef TYPE_2__ GLUface ;


 int FALSE ;
 int assert (int ) ;

__attribute__((used)) static void MakeFace( GLUface *newFace, GLUhalfEdge *eOrig, GLUface *fNext )
{
  GLUhalfEdge *e;
  GLUface *fPrev;
  GLUface *fNew = newFace;

  assert(fNew != ((void*)0));


  fPrev = fNext->prev;
  fNew->prev = fPrev;
  fPrev->next = fNew;
  fNew->next = fNext;
  fNext->prev = fNew;

  fNew->anEdge = eOrig;
  fNew->data = ((void*)0);
  fNew->trail = ((void*)0);
  fNew->marked = FALSE;




  fNew->inside = fNext->inside;


  e = eOrig;
  do {
    e->Lface = fNew;
    e = e->Lnext;
  } while( e != eOrig );
}
