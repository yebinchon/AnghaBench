
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {TYPE_6__* anEdge; struct TYPE_15__* next; } ;
struct TYPE_14__ {scalar_t__ winding; struct TYPE_14__* Lnext; TYPE_3__* Dst; TYPE_2__* Org; } ;
struct TYPE_13__ {int * tUnit; TYPE_1__* mesh; } ;
struct TYPE_12__ {int t; struct TYPE_12__* next; } ;
struct TYPE_11__ {int s; int t; } ;
struct TYPE_10__ {int s; int t; } ;
struct TYPE_9__ {TYPE_4__ vHead; TYPE_7__ fHead; } ;
typedef scalar_t__ GLdouble ;
typedef TYPE_4__ GLUvertex ;
typedef TYPE_5__ GLUtesselator ;
typedef TYPE_6__ GLUhalfEdge ;
typedef TYPE_7__ GLUface ;



__attribute__((used)) static void CheckOrientation( GLUtesselator *tess )
{
  GLdouble area;
  GLUface *f, *fHead = &tess->mesh->fHead;
  GLUvertex *v, *vHead = &tess->mesh->vHead;
  GLUhalfEdge *e;




  area = 0;
  for( f = fHead->next; f != fHead; f = f->next ) {
    e = f->anEdge;
    if( e->winding <= 0 ) continue;
    do {
      area += (e->Org->s - e->Dst->s) * (e->Org->t + e->Dst->t);
      e = e->Lnext;
    } while( e != f->anEdge );
  }
  if( area < 0 ) {

    for( v = vHead->next; v != vHead; v = v->next ) {
      v->t = - v->t;
    }
    tess->tUnit[0] = - tess->tUnit[0];
    tess->tUnit[1] = - tess->tUnit[1];
    tess->tUnit[2] = - tess->tUnit[2];
  }
}
