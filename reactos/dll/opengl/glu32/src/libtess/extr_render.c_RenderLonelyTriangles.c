
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* anEdge; struct TYPE_12__* trail; } ;
struct TYPE_11__ {struct TYPE_11__* Lnext; TYPE_2__* Org; TYPE_1__* Rface; } ;
struct TYPE_10__ {scalar_t__ flagBoundary; } ;
struct TYPE_9__ {int data; } ;
struct TYPE_8__ {int inside; } ;
typedef TYPE_3__ GLUtesselator ;
typedef TYPE_4__ GLUhalfEdge ;
typedef TYPE_5__ GLUface ;


 int CALL_BEGIN_OR_BEGIN_DATA (int ) ;
 int CALL_EDGE_FLAG_OR_EDGE_FLAG_DATA (int) ;
 int CALL_END_OR_END_DATA () ;
 int CALL_VERTEX_OR_VERTEX_DATA (int ) ;
 int GL_TRIANGLES ;

__attribute__((used)) static void RenderLonelyTriangles( GLUtesselator *tess, GLUface *f )
{



  GLUhalfEdge *e;
  int newState;
  int edgeState = -1;

  CALL_BEGIN_OR_BEGIN_DATA( GL_TRIANGLES );

  for( ; f != ((void*)0); f = f->trail ) {


    e = f->anEdge;
    do {
      if( tess->flagBoundary ) {



 newState = ! e->Rface->inside;
 if( edgeState != newState ) {
   edgeState = newState;
          CALL_EDGE_FLAG_OR_EDGE_FLAG_DATA( edgeState );
 }
      }
      CALL_VERTEX_OR_VERTEX_DATA( e->Org->data );

      e = e->Lnext;
    } while( e != f->anEdge );
  }
  CALL_END_OR_END_DATA();
}
