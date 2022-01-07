
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int marked; scalar_t__ inside; struct TYPE_11__* next; } ;
struct TYPE_10__ {TYPE_3__ fHead; } ;
struct TYPE_9__ {int * lonelyTriList; } ;
typedef TYPE_1__ GLUtesselator ;
typedef TYPE_2__ GLUmesh ;
typedef TYPE_3__ GLUface ;


 int FALSE ;
 int RenderLonelyTriangles (TYPE_1__*,int *) ;
 int RenderMaximumFaceGroup (TYPE_1__*,TYPE_3__*) ;
 int assert (int ) ;

void __gl_renderMesh( GLUtesselator *tess, GLUmesh *mesh )
{
  GLUface *f;


  tess->lonelyTriList = ((void*)0);

  for( f = mesh->fHead.next; f != &mesh->fHead; f = f->next ) {
    f->marked = FALSE;
  }
  for( f = mesh->fHead.next; f != &mesh->fHead; f = f->next ) {





    if( f->inside && ! f->marked ) {
      RenderMaximumFaceGroup( tess, f );
      assert( f->marked );
    }
  }
  if( tess->lonelyTriList != ((void*)0) ) {
    RenderLonelyTriangles( tess, tess->lonelyTriList );
    tess->lonelyTriList = ((void*)0);
  }
}
