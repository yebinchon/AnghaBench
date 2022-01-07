
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;


struct TYPE_21__ {int dirty; int inside; TYPE_4__* eUp; } ;
struct TYPE_20__ {TYPE_2__* Rface; struct TYPE_20__* Sym; struct TYPE_20__* Lnext; int Org; int Dst; TYPE_1__* Lface; } ;
struct TYPE_19__ {int env; } ;
struct TYPE_18__ {int inside; } ;
struct TYPE_17__ {int inside; } ;
struct TYPE_16__ {int dirty; } ;
typedef TYPE_3__ GLUtesselator ;
typedef TYPE_4__ GLUhalfEdge ;
typedef TYPE_5__ ActiveRegion ;


 scalar_t__ EdgeSign (int ,int ,int ) ;
 int FALSE ;
 TYPE_12__* RegionAbove (TYPE_5__*) ;
 TYPE_5__* RegionBelow (TYPE_5__*) ;
 int TRUE ;
 int VertEq (int ,int ) ;
 scalar_t__ VertLeq (int ,int ) ;
 int __gl_meshSplice (TYPE_4__*,TYPE_4__*) ;
 TYPE_4__* __gl_meshSplitEdge (TYPE_4__*) ;
 int assert (int) ;
 int longjmp (int ,int) ;

__attribute__((used)) static int CheckForLeftSplice( GLUtesselator *tess, ActiveRegion *regUp )
{
  ActiveRegion *regLo = RegionBelow(regUp);
  GLUhalfEdge *eUp = regUp->eUp;
  GLUhalfEdge *eLo = regLo->eUp;
  GLUhalfEdge *e;

  assert( ! VertEq( eUp->Dst, eLo->Dst ));

  if( VertLeq( eUp->Dst, eLo->Dst )) {
    if( EdgeSign( eUp->Dst, eLo->Dst, eUp->Org ) < 0 ) return FALSE;


    RegionAbove(regUp)->dirty = regUp->dirty = TRUE;
    e = __gl_meshSplitEdge( eUp );
    if (e == ((void*)0)) longjmp(tess->env,1);
    if ( !__gl_meshSplice( eLo->Sym, e ) ) longjmp(tess->env,1);
    e->Lface->inside = regUp->inside;
  } else {
    if( EdgeSign( eLo->Dst, eUp->Dst, eLo->Org ) > 0 ) return FALSE;


    regUp->dirty = regLo->dirty = TRUE;
    e = __gl_meshSplitEdge( eLo );
    if (e == ((void*)0)) longjmp(tess->env,1);
    if ( !__gl_meshSplice( eUp->Lnext, eLo->Sym ) ) longjmp(tess->env,1);
    e->Rface->inside = regUp->inside;
  }
  return TRUE;
}
