
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_20__ {TYPE_1__* eUp; } ;
struct TYPE_19__ {int mesh; int dict; int event; int pq; int fatalError; } ;
struct TYPE_18__ {int anEdge; } ;
struct TYPE_17__ {int Org; } ;
typedef TYPE_2__ GLUvertex ;
typedef TYPE_3__ GLUtesselator ;
typedef TYPE_4__ ActiveRegion ;


 int DebugEvent (TYPE_3__*) ;
 int DoneEdgeDict (TYPE_3__*) ;
 int DonePriorityQ (TYPE_3__*) ;
 int FALSE ;
 int InitEdgeDict (TYPE_3__*) ;
 int InitPriorityQ (TYPE_3__*) ;
 int RemoveDegenerateEdges (TYPE_3__*) ;
 int RemoveDegenerateFaces (int ) ;
 int SpliceMergeVertices (TYPE_3__*,int ,int ) ;
 int SweepEvent (TYPE_3__*,TYPE_2__*) ;
 int VertEq (TYPE_2__*,TYPE_2__*) ;
 int __gl_meshCheckMesh (int ) ;
 scalar_t__ dictKey (int ) ;
 int dictMin (int ) ;
 scalar_t__ pqExtractMin (int ) ;
 scalar_t__ pqMinimum (int ) ;

int __gl_computeInterior( GLUtesselator *tess )







{
  GLUvertex *v, *vNext;

  tess->fatalError = FALSE;







  RemoveDegenerateEdges( tess );
  if ( !InitPriorityQ( tess ) ) return 0;
  InitEdgeDict( tess );


  while( (v = (GLUvertex *)pqExtractMin( tess->pq )) != ((void*)0) ) {
    for( ;; ) {
      vNext = (GLUvertex *)pqMinimum( tess->pq );
      if( vNext == ((void*)0) || ! VertEq( vNext, v )) break;
      vNext = (GLUvertex *)pqExtractMin( tess->pq );
      SpliceMergeVertices( tess, v->anEdge, vNext->anEdge );
    }
    SweepEvent( tess, v );
  }



  tess->event = ((ActiveRegion *) dictKey( dictMin( tess->dict )))->eUp->Org;
  DebugEvent( tess );
  DoneEdgeDict( tess );
  DonePriorityQ( tess );

  if ( !RemoveDegenerateFaces( tess->mesh ) ) return 0;
  __gl_meshCheckMesh( tess->mesh );

  return 1;
}
