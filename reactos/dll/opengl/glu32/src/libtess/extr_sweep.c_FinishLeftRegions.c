
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {TYPE_2__* eUp; int fixUpperEdge; } ;
struct TYPE_18__ {scalar_t__ Org; struct TYPE_18__* Oprev; struct TYPE_18__* Onext; int Sym; int Lprev; } ;
struct TYPE_17__ {int env; } ;
typedef TYPE_1__ GLUtesselator ;
typedef TYPE_2__ GLUhalfEdge ;
typedef TYPE_3__ ActiveRegion ;


 int FALSE ;
 int FinishRegion (TYPE_1__*,TYPE_3__*) ;
 int FixUpperEdge (TYPE_3__*,TYPE_2__*) ;
 TYPE_3__* RegionBelow (TYPE_3__*) ;
 TYPE_2__* __gl_meshConnect (int ,int ) ;
 int __gl_meshSplice (TYPE_2__*,TYPE_2__*) ;
 int longjmp (int ,int) ;

__attribute__((used)) static GLUhalfEdge *FinishLeftRegions( GLUtesselator *tess,
        ActiveRegion *regFirst, ActiveRegion *regLast )
{
  ActiveRegion *reg, *regPrev;
  GLUhalfEdge *e, *ePrev;

  regPrev = regFirst;
  ePrev = regFirst->eUp;
  while( regPrev != regLast ) {
    regPrev->fixUpperEdge = FALSE;
    reg = RegionBelow( regPrev );
    e = reg->eUp;
    if( e->Org != ePrev->Org ) {
      if( ! reg->fixUpperEdge ) {






 FinishRegion( tess, regPrev );
 break;
      }



      e = __gl_meshConnect( ePrev->Lprev, e->Sym );
      if (e == ((void*)0)) longjmp(tess->env,1);
      if ( !FixUpperEdge( reg, e ) ) longjmp(tess->env,1);
    }


    if( ePrev->Onext != e ) {
      if ( !__gl_meshSplice( e->Oprev, e ) ) longjmp(tess->env,1);
      if ( !__gl_meshSplice( ePrev, e ) ) longjmp(tess->env,1);
    }
    FinishRegion( tess, regPrev );
    ePrev = reg->eUp;
    regPrev = reg;
  }
  return ePrev;
}
