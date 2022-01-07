
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {void* marked; } ;
struct TYPE_8__ {TYPE_1__* Dst; struct TYPE_8__* Onext; TYPE_5__* Lface; TYPE_2__* Org; struct TYPE_8__* Dprev; } ;
struct TYPE_7__ {int data; } ;
struct TYPE_6__ {int data; } ;
typedef int GLUtesselator ;
typedef TYPE_3__ GLUhalfEdge ;


 int CALL_BEGIN_OR_BEGIN_DATA (int ) ;
 int CALL_END_OR_END_DATA () ;
 int CALL_VERTEX_OR_VERTEX_DATA (int ) ;
 int GL_TRIANGLE_STRIP ;
 scalar_t__ Marked (TYPE_5__*) ;
 void* TRUE ;
 int assert (int) ;

__attribute__((used)) static void RenderStrip( GLUtesselator *tess, GLUhalfEdge *e, long size )
{




  CALL_BEGIN_OR_BEGIN_DATA( GL_TRIANGLE_STRIP );
  CALL_VERTEX_OR_VERTEX_DATA( e->Org->data );
  CALL_VERTEX_OR_VERTEX_DATA( e->Dst->data );

  while( ! Marked( e->Lface )) {
    e->Lface->marked = TRUE;
    --size;
    e = e->Dprev;
    CALL_VERTEX_OR_VERTEX_DATA( e->Org->data );
    if( Marked( e->Lface )) break;

    e->Lface->marked = TRUE;
    --size;
    e = e->Onext;
    CALL_VERTEX_OR_VERTEX_DATA( e->Dst->data );
  }

  assert( size == 0 );
  CALL_END_OR_END_DATA();
}
