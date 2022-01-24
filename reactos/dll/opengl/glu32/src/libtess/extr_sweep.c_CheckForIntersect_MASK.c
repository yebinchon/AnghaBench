#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_53__   TYPE_4__ ;
typedef  struct TYPE_52__   TYPE_3__ ;
typedef  struct TYPE_51__   TYPE_2__ ;
typedef  struct TYPE_50__   TYPE_24__ ;
typedef  struct TYPE_49__   TYPE_1__ ;

/* Type definitions */
struct TYPE_53__ {int dirty; TYPE_3__* eUp; int /*<<< orphan*/  fixUpperEdge; } ;
struct TYPE_52__ {TYPE_1__* Org; struct TYPE_52__* Oprev; struct TYPE_52__* Sym; struct TYPE_52__* Rprev; struct TYPE_52__* Onext; struct TYPE_52__* Lnext; TYPE_1__* Dst; } ;
struct TYPE_51__ {int /*<<< orphan*/  env; int /*<<< orphan*/ * pq; TYPE_1__* event; } ;
struct TYPE_50__ {int dirty; } ;
struct TYPE_49__ {scalar_t__ t; scalar_t__ s; scalar_t__ pqHandle; } ;
typedef  scalar_t__ GLdouble ;
typedef  TYPE_1__ GLUvertex ;
typedef  TYPE_2__ GLUtesselator ;
typedef  TYPE_3__ GLUhalfEdge ;
typedef  TYPE_4__ ActiveRegion ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_4__*,TYPE_3__*,TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int FALSE ; 
 TYPE_3__* FUNC4 (TYPE_2__*,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ LONG_MAX ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 TYPE_24__* FUNC8 (TYPE_4__*) ; 
 TYPE_4__* FUNC9 (TYPE_4__*) ; 
 int TRUE ; 
 TYPE_4__* FUNC10 (TYPE_4__*) ; 
 TYPE_4__* FUNC11 (TYPE_4__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC21( GLUtesselator *tess, ActiveRegion *regUp )
/*
 * Check the upper and lower edges of the given region to see if
 * they intersect.  If so, create the intersection and add it
 * to the data structures.
 *
 * Returns TRUE if adding the new intersection resulted in a recursive
 * call to AddRightEdges(); in this case all "dirty" regions have been
 * checked for intersections, and possibly regUp has been deleted.
 */
{
  ActiveRegion *regLo = FUNC9(regUp);
  GLUhalfEdge *eUp = regUp->eUp;
  GLUhalfEdge *eLo = regLo->eUp;
  GLUvertex *orgUp = eUp->Org;
  GLUvertex *orgLo = eLo->Org;
  GLUvertex *dstUp = eUp->Dst;
  GLUvertex *dstLo = eLo->Dst;
  GLdouble tMinUp, tMaxLo;
  GLUvertex isect, *orgMin;
  GLUhalfEdge *e;

  FUNC17( ! FUNC12( dstLo, dstUp ));
  FUNC17( FUNC3( dstUp, tess->event, orgUp ) <= 0 );
  FUNC17( FUNC3( dstLo, tess->event, orgLo ) >= 0 );
  FUNC17( orgUp != tess->event && orgLo != tess->event );
  FUNC17( ! regUp->fixUpperEdge && ! regLo->fixUpperEdge );

  if( orgUp == orgLo ) return FALSE;	/* right endpoints are the same */

  tMinUp = FUNC7( orgUp->t, dstUp->t );
  tMaxLo = FUNC6( orgLo->t, dstLo->t );
  if( tMinUp > tMaxLo ) return FALSE;	/* t ranges do not overlap */

  if( FUNC13( orgUp, orgLo )) {
    if( FUNC3( dstLo, orgUp, orgLo ) > 0 ) return FALSE;
  } else {
    if( FUNC3( dstUp, orgLo, orgUp ) < 0 ) return FALSE;
  }

  /* At this point the edges intersect, at least marginally */
  FUNC2( tess );

  FUNC14( dstUp, orgUp, dstLo, orgLo, &isect );
  /* The following properties are guaranteed: */
  FUNC17( FUNC7( orgUp->t, dstUp->t ) <= isect.t );
  FUNC17( isect.t <= FUNC6( orgLo->t, dstLo->t ));
  FUNC17( FUNC7( dstLo->s, dstUp->s ) <= isect.s );
  FUNC17( isect.s <= FUNC6( orgLo->s, orgUp->s ));

  if( FUNC13( &isect, tess->event )) {
    /* The intersection point lies slightly to the left of the sweep line,
     * so move it until it''s slightly to the right of the sweep line.
     * (If we had perfect numerical precision, this would never happen
     * in the first place).  The easiest and safest thing to do is
     * replace the intersection by tess->event.
     */
    isect.s = tess->event->s;
    isect.t = tess->event->t;
  }
  /* Similarly, if the computed intersection lies to the right of the
   * rightmost origin (which should rarely happen), it can cause
   * unbelievable inefficiency on sufficiently degenerate inputs.
   * (If you have the test program, try running test54.d with the
   * "X zoom" option turned on).
   */
  orgMin = FUNC13( orgUp, orgLo ) ? orgUp : orgLo;
  if( FUNC13( orgMin, &isect )) {
    isect.s = orgMin->s;
    isect.t = orgMin->t;
  }

  if( FUNC12( &isect, orgUp ) || FUNC12( &isect, orgLo )) {
    /* Easy case -- intersection at one of the right endpoints */
    (void) FUNC1( tess, regUp );
    return FALSE;
  }

  if(	 (! FUNC12( dstUp, tess->event )
	  && FUNC3( dstUp, tess->event, &isect ) >= 0)
      || (! FUNC12( dstLo, tess->event )
	  && FUNC3( dstLo, tess->event, &isect ) <= 0 ))
  {
    /* Very unusual -- the new upper or lower edge would pass on the
     * wrong side of the sweep event, or through it.  This can happen
     * due to very small numerical errors in the intersection calculation.
     */
    if( dstLo == tess->event ) {
      /* Splice dstLo into eUp, and process the new region(s) */
      if (FUNC16( eUp->Sym ) == NULL) FUNC18(tess->env,1);
      if ( !FUNC15( eLo->Sym, eUp ) ) FUNC18(tess->env,1);
      regUp = FUNC10( regUp );
      if (regUp == NULL) FUNC18(tess->env,1);
      eUp = FUNC9(regUp)->eUp;
      FUNC4( tess, FUNC9(regUp), regLo );
      FUNC0( tess, regUp, eUp->Oprev, eUp, eUp, TRUE );
      return TRUE;
    }
    if( dstUp == tess->event ) {
      /* Splice dstUp into eLo, and process the new region(s) */
      if (FUNC16( eLo->Sym ) == NULL) FUNC18(tess->env,1);
      if ( !FUNC15( eUp->Lnext, eLo->Oprev ) ) FUNC18(tess->env,1);
      regLo = regUp;
      regUp = FUNC11( regUp );
      e = FUNC9(regUp)->eUp->Rprev;
      regLo->eUp = eLo->Oprev;
      eLo = FUNC4( tess, regLo, NULL );
      FUNC0( tess, regUp, eLo->Onext, eUp->Rprev, e, TRUE );
      return TRUE;
    }
    /* Special case: called from ConnectRightVertex.  If either
     * edge passes on the wrong side of tess->event, split it
     * (and wait for ConnectRightVertex to splice it appropriately).
     */
    if( FUNC3( dstUp, tess->event, &isect ) >= 0 ) {
      FUNC8(regUp)->dirty = regUp->dirty = TRUE;
      if (FUNC16( eUp->Sym ) == NULL) FUNC18(tess->env,1);
      eUp->Org->s = tess->event->s;
      eUp->Org->t = tess->event->t;
    }
    if( FUNC3( dstLo, tess->event, &isect ) <= 0 ) {
      regUp->dirty = regLo->dirty = TRUE;
      if (FUNC16( eLo->Sym ) == NULL) FUNC18(tess->env,1);
      eLo->Org->s = tess->event->s;
      eLo->Org->t = tess->event->t;
    }
    /* leave the rest for ConnectRightVertex */
    return FALSE;
  }

  /* General case -- split both edges, splice into new vertex.
   * When we do the splice operation, the order of the arguments is
   * arbitrary as far as correctness goes.  However, when the operation
   * creates a new face, the work done is proportional to the size of
   * the new face.  We expect the faces in the processed part of
   * the mesh (ie. eUp->Lface) to be smaller than the faces in the
   * unprocessed original contours (which will be eLo->Oprev->Lface).
   */
  if (FUNC16( eUp->Sym ) == NULL) FUNC18(tess->env,1);
  if (FUNC16( eLo->Sym ) == NULL) FUNC18(tess->env,1);
  if ( !FUNC15( eLo->Oprev, eUp ) ) FUNC18(tess->env,1);
  eUp->Org->s = isect.s;
  eUp->Org->t = isect.t;
  eUp->Org->pqHandle = FUNC20( tess->pq, eUp->Org ); /* __gl_pqSortInsert */
  if (eUp->Org->pqHandle == LONG_MAX) {
     FUNC19(tess->pq);	/* __gl_pqSortDeletePriorityQ */
     tess->pq = NULL;
     FUNC18(tess->env,1);
  }
  FUNC5( tess, eUp->Org, orgUp, dstUp, orgLo, dstLo );
  FUNC8(regUp)->dirty = regUp->dirty = regLo->dirty = TRUE;
  return FALSE;
}