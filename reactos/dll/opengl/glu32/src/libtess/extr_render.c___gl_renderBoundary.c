
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* anEdge; scalar_t__ inside; struct TYPE_9__* next; } ;
struct TYPE_8__ {struct TYPE_8__* Lnext; TYPE_1__* Org; } ;
struct TYPE_7__ {TYPE_4__ fHead; } ;
struct TYPE_6__ {int data; } ;
typedef int GLUtesselator ;
typedef TYPE_2__ GLUmesh ;
typedef TYPE_3__ GLUhalfEdge ;
typedef TYPE_4__ GLUface ;


 int CALL_BEGIN_OR_BEGIN_DATA (int ) ;
 int CALL_END_OR_END_DATA () ;
 int CALL_VERTEX_OR_VERTEX_DATA (int ) ;
 int GL_LINE_LOOP ;

void __gl_renderBoundary( GLUtesselator *tess, GLUmesh *mesh )
{
  GLUface *f;
  GLUhalfEdge *e;

  for( f = mesh->fHead.next; f != &mesh->fHead; f = f->next ) {
    if( f->inside ) {
      CALL_BEGIN_OR_BEGIN_DATA( GL_LINE_LOOP );
      e = f->anEdge;
      do {
        CALL_VERTEX_OR_VERTEX_DATA( e->Org->data );
 e = e->Lnext;
      } while( e != f->anEdge );
      CALL_END_OR_END_DATA();
    }
  }
}
