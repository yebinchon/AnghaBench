
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_53__ TYPE_4__ ;
typedef struct TYPE_52__ TYPE_3__ ;
typedef struct TYPE_51__ TYPE_2__ ;
typedef struct TYPE_50__ TYPE_24__ ;
typedef struct TYPE_49__ TYPE_1__ ;


struct TYPE_53__ {int dirty; TYPE_3__* eUp; int fixUpperEdge; } ;
struct TYPE_52__ {TYPE_1__* Org; struct TYPE_52__* Oprev; struct TYPE_52__* Sym; struct TYPE_52__* Rprev; struct TYPE_52__* Onext; struct TYPE_52__* Lnext; TYPE_1__* Dst; } ;
struct TYPE_51__ {int env; int * pq; TYPE_1__* event; } ;
struct TYPE_50__ {int dirty; } ;
struct TYPE_49__ {scalar_t__ t; scalar_t__ s; scalar_t__ pqHandle; } ;
typedef scalar_t__ GLdouble ;
typedef TYPE_1__ GLUvertex ;
typedef TYPE_2__ GLUtesselator ;
typedef TYPE_3__ GLUhalfEdge ;
typedef TYPE_4__ ActiveRegion ;


 int AddRightEdges (TYPE_2__*,TYPE_4__*,TYPE_3__*,TYPE_3__*,TYPE_3__*,int) ;
 int CheckForRightSplice (TYPE_2__*,TYPE_4__*) ;
 int DebugEvent (TYPE_2__*) ;
 scalar_t__ EdgeSign (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int FALSE ;
 TYPE_3__* FinishLeftRegions (TYPE_2__*,TYPE_4__*,TYPE_4__*) ;
 int GetIntersectData (TYPE_2__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ LONG_MAX ;
 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 TYPE_24__* RegionAbove (TYPE_4__*) ;
 TYPE_4__* RegionBelow (TYPE_4__*) ;
 int TRUE ;
 TYPE_4__* TopLeftRegion (TYPE_4__*) ;
 TYPE_4__* TopRightRegion (TYPE_4__*) ;
 scalar_t__ VertEq (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ VertLeq (TYPE_1__*,TYPE_1__*) ;
 int __gl_edgeIntersect (TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int __gl_meshSplice (TYPE_3__*,TYPE_3__*) ;
 int * __gl_meshSplitEdge (TYPE_3__*) ;
 int assert (int) ;
 int longjmp (int ,int) ;
 int pqDeletePriorityQ (int *) ;
 scalar_t__ pqInsert (int *,TYPE_1__*) ;

__attribute__((used)) static int CheckForIntersect( GLUtesselator *tess, ActiveRegion *regUp )
{
  ActiveRegion *regLo = RegionBelow(regUp);
  GLUhalfEdge *eUp = regUp->eUp;
  GLUhalfEdge *eLo = regLo->eUp;
  GLUvertex *orgUp = eUp->Org;
  GLUvertex *orgLo = eLo->Org;
  GLUvertex *dstUp = eUp->Dst;
  GLUvertex *dstLo = eLo->Dst;
  GLdouble tMinUp, tMaxLo;
  GLUvertex isect, *orgMin;
  GLUhalfEdge *e;

  assert( ! VertEq( dstLo, dstUp ));
  assert( EdgeSign( dstUp, tess->event, orgUp ) <= 0 );
  assert( EdgeSign( dstLo, tess->event, orgLo ) >= 0 );
  assert( orgUp != tess->event && orgLo != tess->event );
  assert( ! regUp->fixUpperEdge && ! regLo->fixUpperEdge );

  if( orgUp == orgLo ) return FALSE;

  tMinUp = MIN( orgUp->t, dstUp->t );
  tMaxLo = MAX( orgLo->t, dstLo->t );
  if( tMinUp > tMaxLo ) return FALSE;

  if( VertLeq( orgUp, orgLo )) {
    if( EdgeSign( dstLo, orgUp, orgLo ) > 0 ) return FALSE;
  } else {
    if( EdgeSign( dstUp, orgLo, orgUp ) < 0 ) return FALSE;
  }


  DebugEvent( tess );

  __gl_edgeIntersect( dstUp, orgUp, dstLo, orgLo, &isect );

  assert( MIN( orgUp->t, dstUp->t ) <= isect.t );
  assert( isect.t <= MAX( orgLo->t, dstLo->t ));
  assert( MIN( dstLo->s, dstUp->s ) <= isect.s );
  assert( isect.s <= MAX( orgLo->s, orgUp->s ));

  if( VertLeq( &isect, tess->event )) {






    isect.s = tess->event->s;
    isect.t = tess->event->t;
  }






  orgMin = VertLeq( orgUp, orgLo ) ? orgUp : orgLo;
  if( VertLeq( orgMin, &isect )) {
    isect.s = orgMin->s;
    isect.t = orgMin->t;
  }

  if( VertEq( &isect, orgUp ) || VertEq( &isect, orgLo )) {

    (void) CheckForRightSplice( tess, regUp );
    return FALSE;
  }

  if( (! VertEq( dstUp, tess->event )
   && EdgeSign( dstUp, tess->event, &isect ) >= 0)
      || (! VertEq( dstLo, tess->event )
   && EdgeSign( dstLo, tess->event, &isect ) <= 0 ))
  {




    if( dstLo == tess->event ) {

      if (__gl_meshSplitEdge( eUp->Sym ) == ((void*)0)) longjmp(tess->env,1);
      if ( !__gl_meshSplice( eLo->Sym, eUp ) ) longjmp(tess->env,1);
      regUp = TopLeftRegion( regUp );
      if (regUp == ((void*)0)) longjmp(tess->env,1);
      eUp = RegionBelow(regUp)->eUp;
      FinishLeftRegions( tess, RegionBelow(regUp), regLo );
      AddRightEdges( tess, regUp, eUp->Oprev, eUp, eUp, TRUE );
      return TRUE;
    }
    if( dstUp == tess->event ) {

      if (__gl_meshSplitEdge( eLo->Sym ) == ((void*)0)) longjmp(tess->env,1);
      if ( !__gl_meshSplice( eUp->Lnext, eLo->Oprev ) ) longjmp(tess->env,1);
      regLo = regUp;
      regUp = TopRightRegion( regUp );
      e = RegionBelow(regUp)->eUp->Rprev;
      regLo->eUp = eLo->Oprev;
      eLo = FinishLeftRegions( tess, regLo, ((void*)0) );
      AddRightEdges( tess, regUp, eLo->Onext, eUp->Rprev, e, TRUE );
      return TRUE;
    }




    if( EdgeSign( dstUp, tess->event, &isect ) >= 0 ) {
      RegionAbove(regUp)->dirty = regUp->dirty = TRUE;
      if (__gl_meshSplitEdge( eUp->Sym ) == ((void*)0)) longjmp(tess->env,1);
      eUp->Org->s = tess->event->s;
      eUp->Org->t = tess->event->t;
    }
    if( EdgeSign( dstLo, tess->event, &isect ) <= 0 ) {
      regUp->dirty = regLo->dirty = TRUE;
      if (__gl_meshSplitEdge( eLo->Sym ) == ((void*)0)) longjmp(tess->env,1);
      eLo->Org->s = tess->event->s;
      eLo->Org->t = tess->event->t;
    }

    return FALSE;
  }
  if (__gl_meshSplitEdge( eUp->Sym ) == ((void*)0)) longjmp(tess->env,1);
  if (__gl_meshSplitEdge( eLo->Sym ) == ((void*)0)) longjmp(tess->env,1);
  if ( !__gl_meshSplice( eLo->Oprev, eUp ) ) longjmp(tess->env,1);
  eUp->Org->s = isect.s;
  eUp->Org->t = isect.t;
  eUp->Org->pqHandle = pqInsert( tess->pq, eUp->Org );
  if (eUp->Org->pqHandle == LONG_MAX) {
     pqDeletePriorityQ(tess->pq);
     tess->pq = ((void*)0);
     longjmp(tess->env,1);
  }
  GetIntersectData( tess, eUp->Org, orgUp, dstUp, orgLo, dstLo );
  RegionAbove(regUp)->dirty = regUp->dirty = regLo->dirty = TRUE;
  return FALSE;
}
