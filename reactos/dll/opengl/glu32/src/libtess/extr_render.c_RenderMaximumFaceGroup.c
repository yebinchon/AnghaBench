
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct FaceCount {int size; TYPE_2__* eStart; int (* render ) (TYPE_1__*,TYPE_2__*,int) ;} ;
struct TYPE_14__ {TYPE_2__* anEdge; } ;
struct TYPE_13__ {struct TYPE_13__* Lprev; struct TYPE_13__* Lnext; } ;
struct TYPE_12__ {int flagBoundary; } ;
typedef TYPE_1__ GLUtesselator ;
typedef TYPE_2__ GLUhalfEdge ;
typedef TYPE_3__ GLUface ;


 struct FaceCount MaximumFan (TYPE_2__*) ;
 struct FaceCount MaximumStrip (TYPE_2__*) ;
 int RenderTriangle (TYPE_1__*,TYPE_2__*,int) ;
 int stub1 (TYPE_1__*,TYPE_2__*,int) ;

__attribute__((used)) static void RenderMaximumFaceGroup( GLUtesselator *tess, GLUface *fOrig )
{







  GLUhalfEdge *e = fOrig->anEdge;
  struct FaceCount max, newFace;

  max.size = 1;
  max.eStart = e;
  max.render = &RenderTriangle;

  if( ! tess->flagBoundary ) {
    newFace = MaximumFan( e ); if( newFace.size > max.size ) { max = newFace; }
    newFace = MaximumFan( e->Lnext ); if( newFace.size > max.size ) { max = newFace; }
    newFace = MaximumFan( e->Lprev ); if( newFace.size > max.size ) { max = newFace; }

    newFace = MaximumStrip( e ); if( newFace.size > max.size ) { max = newFace; }
    newFace = MaximumStrip( e->Lnext ); if( newFace.size > max.size ) { max = newFace; }
    newFace = MaximumStrip( e->Lprev ); if( newFace.size > max.size ) { max = newFace; }
  }
  (*(max.render))( tess, max.eStart, max.size );
}
