
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_28__ {scalar_t__ windingNumber; void* dirty; int inside; TYPE_1__* eUp; } ;
struct TYPE_27__ {scalar_t__ Org; scalar_t__ winding; int Oprev; struct TYPE_27__* Onext; int Sym; int Dst; } ;
struct TYPE_26__ {int env; } ;
struct TYPE_25__ {TYPE_3__* Sym; TYPE_3__* Rprev; } ;
typedef scalar_t__ GLboolean ;
typedef TYPE_2__ GLUtesselator ;
typedef TYPE_3__ GLUhalfEdge ;
typedef TYPE_4__ ActiveRegion ;


 int AddRegionBelow (TYPE_2__*,TYPE_4__*,int ) ;
 int AddWinding (TYPE_3__*,TYPE_3__*) ;
 scalar_t__ CheckForRightSplice (TYPE_2__*,TYPE_4__*) ;
 int DeleteRegion (TYPE_2__*,TYPE_4__*) ;
 int FALSE ;
 int IsWindingInside (TYPE_2__*,scalar_t__) ;
 TYPE_4__* RegionBelow (TYPE_4__*) ;
 void* TRUE ;
 int VertLeq (scalar_t__,int ) ;
 int WalkDirtyRegions (TYPE_2__*,TYPE_4__*) ;
 int __gl_meshDelete (TYPE_3__*) ;
 int __gl_meshSplice (int ,TYPE_3__*) ;
 int assert (int) ;
 int longjmp (int ,int) ;

__attribute__((used)) static void AddRightEdges( GLUtesselator *tess, ActiveRegion *regUp,
       GLUhalfEdge *eFirst, GLUhalfEdge *eLast, GLUhalfEdge *eTopLeft,
       GLboolean cleanUp )
{
  ActiveRegion *reg, *regPrev;
  GLUhalfEdge *e, *ePrev;
  int firstTime = TRUE;


  e = eFirst;
  do {
    assert( VertLeq( e->Org, e->Dst ));
    AddRegionBelow( tess, regUp, e->Sym );
    e = e->Onext;
  } while ( e != eLast );





  if( eTopLeft == ((void*)0) ) {
    eTopLeft = RegionBelow( regUp )->eUp->Rprev;
  }
  regPrev = regUp;
  ePrev = eTopLeft;
  for( ;; ) {
    reg = RegionBelow( regPrev );
    e = reg->eUp->Sym;
    if( e->Org != ePrev->Org ) break;

    if( e->Onext != ePrev ) {

      if ( !__gl_meshSplice( e->Oprev, e ) ) longjmp(tess->env,1);
      if ( !__gl_meshSplice( ePrev->Oprev, e ) ) longjmp(tess->env,1);
    }

    reg->windingNumber = regPrev->windingNumber - e->winding;
    reg->inside = IsWindingInside( tess, reg->windingNumber );




    regPrev->dirty = TRUE;
    if( ! firstTime && CheckForRightSplice( tess, regPrev )) {
      AddWinding( e, ePrev );
      DeleteRegion( tess, regPrev );
      if ( !__gl_meshDelete( ePrev ) ) longjmp(tess->env,1);
    }
    firstTime = FALSE;
    regPrev = reg;
    ePrev = e;
  }
  regPrev->dirty = TRUE;
  assert( regPrev->windingNumber - e->winding == reg->windingNumber );

  if( cleanUp ) {

    WalkDirtyRegions( tess, regPrev );
  }
}
