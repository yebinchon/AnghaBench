
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_27__ {TYPE_3__* eUp; } ;
struct TYPE_26__ {struct TYPE_26__* Onext; int * activeRegion; } ;
struct TYPE_25__ {int env; TYPE_1__* event; } ;
struct TYPE_24__ {TYPE_3__* anEdge; } ;
typedef TYPE_1__ GLUvertex ;
typedef TYPE_2__ GLUtesselator ;
typedef TYPE_3__ GLUhalfEdge ;
typedef TYPE_4__ ActiveRegion ;


 int AddRightEdges (TYPE_2__*,TYPE_4__*,TYPE_3__*,TYPE_3__*,TYPE_3__*,int ) ;
 int ConnectLeftVertex (TYPE_2__*,TYPE_1__*) ;
 int ConnectRightVertex (TYPE_2__*,TYPE_4__*,TYPE_3__*) ;
 int DebugEvent (TYPE_2__*) ;
 TYPE_3__* FinishLeftRegions (TYPE_2__*,TYPE_4__*,int *) ;
 TYPE_4__* RegionBelow (TYPE_4__*) ;
 int TRUE ;
 TYPE_4__* TopLeftRegion (int *) ;
 int longjmp (int ,int) ;

__attribute__((used)) static void SweepEvent( GLUtesselator *tess, GLUvertex *vEvent )




{
  ActiveRegion *regUp, *reg;
  GLUhalfEdge *e, *eTopLeft, *eBottomLeft;

  tess->event = vEvent;
  DebugEvent( tess );





  e = vEvent->anEdge;
  while( e->activeRegion == ((void*)0) ) {
    e = e->Onext;
    if( e == vEvent->anEdge ) {

      ConnectLeftVertex( tess, vEvent );
      return;
    }
  }
  regUp = TopLeftRegion( e->activeRegion );
  if (regUp == ((void*)0)) longjmp(tess->env,1);
  reg = RegionBelow( regUp );
  eTopLeft = reg->eUp;
  eBottomLeft = FinishLeftRegions( tess, reg, ((void*)0) );






  if( eBottomLeft->Onext == eTopLeft ) {

    ConnectRightVertex( tess, regUp, eBottomLeft );
  } else {
    AddRightEdges( tess, regUp, eBottomLeft->Onext, eTopLeft, eTopLeft, TRUE );
  }
}
