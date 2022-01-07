
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int inside; TYPE_1__* eUp; } ;
struct TYPE_7__ {TYPE_1__* anEdge; int inside; } ;
struct TYPE_6__ {TYPE_2__* Lface; } ;
typedef int GLUtesselator ;
typedef TYPE_1__ GLUhalfEdge ;
typedef TYPE_2__ GLUface ;
typedef TYPE_3__ ActiveRegion ;


 int DeleteRegion (int *,TYPE_3__*) ;

__attribute__((used)) static void FinishRegion( GLUtesselator *tess, ActiveRegion *reg )







{
  GLUhalfEdge *e = reg->eUp;
  GLUface *f = e->Lface;

  f->inside = reg->inside;
  f->anEdge = e;
  DeleteRegion( tess, reg );
}
