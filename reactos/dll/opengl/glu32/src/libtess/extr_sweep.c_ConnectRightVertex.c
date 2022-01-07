
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


struct TYPE_34__ {TYPE_4__* eUp; } ;
struct TYPE_33__ {scalar_t__ Dst; TYPE_2__* Sym; struct TYPE_33__* Onext; int Lprev; struct TYPE_33__* Oprev; int Org; } ;
struct TYPE_32__ {int env; int event; } ;
struct TYPE_31__ {TYPE_1__* activeRegion; } ;
struct TYPE_30__ {void* fixUpperEdge; } ;
typedef TYPE_3__ GLUtesselator ;
typedef TYPE_4__ GLUhalfEdge ;
typedef TYPE_5__ ActiveRegion ;


 int AddRightEdges (TYPE_3__*,TYPE_5__*,TYPE_4__*,TYPE_4__*,TYPE_4__*,void*) ;
 int CheckForIntersect (TYPE_3__*,TYPE_5__*) ;
 void* FALSE ;
 TYPE_4__* FinishLeftRegions (TYPE_3__*,TYPE_5__*,TYPE_5__*) ;
 TYPE_5__* RegionBelow (TYPE_5__*) ;
 void* TRUE ;
 TYPE_5__* TopLeftRegion (TYPE_5__*) ;
 scalar_t__ VertEq (int ,int ) ;
 scalar_t__ VertLeq (int ,int ) ;
 int WalkDirtyRegions (TYPE_3__*,TYPE_5__*) ;
 TYPE_4__* __gl_meshConnect (int ,TYPE_4__*) ;
 int __gl_meshSplice (TYPE_4__*,TYPE_4__*) ;
 int longjmp (int ,int) ;

__attribute__((used)) static void ConnectRightVertex( GLUtesselator *tess, ActiveRegion *regUp,
    GLUhalfEdge *eBottomLeft )
{
  GLUhalfEdge *eNew;
  GLUhalfEdge *eTopLeft = eBottomLeft->Onext;
  ActiveRegion *regLo = RegionBelow(regUp);
  GLUhalfEdge *eUp = regUp->eUp;
  GLUhalfEdge *eLo = regLo->eUp;
  int degenerate = FALSE;

  if( eUp->Dst != eLo->Dst ) {
    (void) CheckForIntersect( tess, regUp );
  }




  if( VertEq( eUp->Org, tess->event )) {
    if ( !__gl_meshSplice( eTopLeft->Oprev, eUp ) ) longjmp(tess->env,1);
    regUp = TopLeftRegion( regUp );
    if (regUp == ((void*)0)) longjmp(tess->env,1);
    eTopLeft = RegionBelow( regUp )->eUp;
    FinishLeftRegions( tess, RegionBelow(regUp), regLo );
    degenerate = TRUE;
  }
  if( VertEq( eLo->Org, tess->event )) {
    if ( !__gl_meshSplice( eBottomLeft, eLo->Oprev ) ) longjmp(tess->env,1);
    eBottomLeft = FinishLeftRegions( tess, regLo, ((void*)0) );
    degenerate = TRUE;
  }
  if( degenerate ) {
    AddRightEdges( tess, regUp, eBottomLeft->Onext, eTopLeft, eTopLeft, TRUE );
    return;
  }




  if( VertLeq( eLo->Org, eUp->Org )) {
    eNew = eLo->Oprev;
  } else {
    eNew = eUp;
  }
  eNew = __gl_meshConnect( eBottomLeft->Lprev, eNew );
  if (eNew == ((void*)0)) longjmp(tess->env,1);




  AddRightEdges( tess, regUp, eNew, eNew->Onext, eNew->Onext, FALSE );
  eNew->Sym->activeRegion->fixUpperEdge = TRUE;
  WalkDirtyRegions( tess, regUp );
}
