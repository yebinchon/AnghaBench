
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


struct TYPE_33__ {TYPE_3__* Sym; } ;
struct TYPE_32__ {scalar_t__ fixUpperEdge; scalar_t__ inside; TYPE_3__* eUp; } ;
struct TYPE_31__ {struct TYPE_31__* Sym; struct TYPE_31__* Dnext; TYPE_8__* Lnext; int Dst; int Org; } ;
struct TYPE_30__ {int env; int dict; } ;
struct TYPE_29__ {TYPE_8__* anEdge; } ;
typedef TYPE_1__ GLUvertex ;
typedef TYPE_2__ GLUtesselator ;
typedef TYPE_3__ GLUhalfEdge ;
typedef TYPE_4__ ActiveRegion ;


 int AddRegionBelow (TYPE_2__*,TYPE_4__*,TYPE_3__*) ;
 int AddRightEdges (TYPE_2__*,TYPE_4__*,TYPE_8__*,TYPE_8__*,int *,int ) ;
 int ComputeWinding (TYPE_2__*,int ) ;
 int ConnectLeftDegenerate (TYPE_2__*,TYPE_4__*,TYPE_1__*) ;
 scalar_t__ EdgeSign (int ,TYPE_1__*,int ) ;
 int FixUpperEdge (TYPE_4__*,TYPE_3__*) ;
 TYPE_4__* RegionBelow (TYPE_4__*) ;
 int SweepEvent (TYPE_2__*,TYPE_1__*) ;
 int TRUE ;
 scalar_t__ VertLeq (int ,int ) ;
 TYPE_3__* __gl_meshConnect (TYPE_3__*,TYPE_8__*) ;
 scalar_t__ dictKey (int ) ;
 int dictSearch (int ,TYPE_4__*) ;
 int longjmp (int ,int) ;

__attribute__((used)) static void ConnectLeftVertex( GLUtesselator *tess, GLUvertex *vEvent )
{
  ActiveRegion *regUp, *regLo, *reg;
  GLUhalfEdge *eUp, *eLo, *eNew;
  ActiveRegion tmp;




  tmp.eUp = vEvent->anEdge->Sym;

  regUp = (ActiveRegion *)dictKey( dictSearch( tess->dict, &tmp ));
  regLo = RegionBelow( regUp );
  eUp = regUp->eUp;
  eLo = regLo->eUp;


  if( EdgeSign( eUp->Dst, vEvent, eUp->Org ) == 0 ) {
    ConnectLeftDegenerate( tess, regUp, vEvent );
    return;
  }




  reg = VertLeq( eLo->Dst, eUp->Dst ) ? regUp : regLo;

  if( regUp->inside || reg->fixUpperEdge) {
    if( reg == regUp ) {
      eNew = __gl_meshConnect( vEvent->anEdge->Sym, eUp->Lnext );
      if (eNew == ((void*)0)) longjmp(tess->env,1);
    } else {
      GLUhalfEdge *tempHalfEdge= __gl_meshConnect( eLo->Dnext, vEvent->anEdge);
      if (tempHalfEdge == ((void*)0)) longjmp(tess->env,1);

      eNew = tempHalfEdge->Sym;
    }
    if( reg->fixUpperEdge ) {
      if ( !FixUpperEdge( reg, eNew ) ) longjmp(tess->env,1);
    } else {
      ComputeWinding( tess, AddRegionBelow( tess, regUp, eNew ));
    }
    SweepEvent( tess, vEvent );
  } else {



    AddRightEdges( tess, regUp, vEvent->anEdge, vEvent->anEdge, ((void*)0), TRUE );
  }
}
