
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Lface; } ;
struct TYPE_5__ {int lonelyTriList; } ;
typedef TYPE_1__ GLUtesselator ;
typedef TYPE_2__ GLUhalfEdge ;


 int AddToTrail (int ,int ) ;
 int assert (int) ;

__attribute__((used)) static void RenderTriangle( GLUtesselator *tess, GLUhalfEdge *e, long size )
{



  assert( size == 1 );
  AddToTrail( e->Lface, tess->lonelyTriList );
}
