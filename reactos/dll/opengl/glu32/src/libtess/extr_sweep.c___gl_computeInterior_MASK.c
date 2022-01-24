#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_1__* eUp; } ;
struct TYPE_19__ {int /*<<< orphan*/  mesh; int /*<<< orphan*/  dict; int /*<<< orphan*/  event; int /*<<< orphan*/  pq; int /*<<< orphan*/  fatalError; } ;
struct TYPE_18__ {int /*<<< orphan*/  anEdge; } ;
struct TYPE_17__ {int /*<<< orphan*/  Org; } ;
typedef  TYPE_2__ GLUvertex ;
typedef  TYPE_3__ GLUtesselator ;
typedef  TYPE_4__ ActiveRegion ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

int FUNC15( GLUtesselator *tess )
/*
 * __gl_computeInterior( tess ) computes the planar arrangement specified
 * by the given contours, and further subdivides this arrangement
 * into regions.  Each region is marked "inside" if it belongs
 * to the polygon, according to the rule given by tess->windingRule.
 * Each interior region is guaranteed be monotone.
 */
{
  GLUvertex *v, *vNext;

  tess->fatalError = FALSE;

  /* Each vertex defines an event for our sweep line.  Start by inserting
   * all the vertices in a priority queue.  Events are processed in
   * lexicographic order, ie.
   *
   *	e1 < e2  iff  e1.x < e2.x || (e1.x == e2.x && e1.y < e2.y)
   */
  FUNC5( tess );
  if ( !FUNC4( tess ) ) return 0; /* if error */
  FUNC3( tess );

  /* __gl_pqSortExtractMin */
  while( (v = (GLUvertex *)FUNC13( tess->pq )) != NULL ) {
    for( ;; ) {
      vNext = (GLUvertex *)FUNC14( tess->pq ); /* __gl_pqSortMinimum */
      if( vNext == NULL || ! FUNC9( vNext, v )) break;

      /* Merge together all vertices at exactly the same location.
       * This is more efficient than processing them one at a time,
       * simplifies the code (see ConnectLeftDegenerate), and is also
       * important for correct handling of certain degenerate cases.
       * For example, suppose there are two identical edges A and B
       * that belong to different contours (so without this code they would
       * be processed by separate sweep events).  Suppose another edge C
       * crosses A and B from above.  When A is processed, we split it
       * at its intersection point with C.  However this also splits C,
       * so when we insert B we may compute a slightly different
       * intersection point.  This might leave two edges with a small
       * gap between them.  This kind of error is especially obvious
       * when using boundary extraction (GLU_TESS_BOUNDARY_ONLY).
       */
      vNext = (GLUvertex *)FUNC13( tess->pq ); /* __gl_pqSortExtractMin*/
      FUNC7( tess, v->anEdge, vNext->anEdge );
    }
    FUNC8( tess, v );
  }

  /* Set tess->event for debugging purposes */
  /* __GL_DICTLISTKEY */ /* __GL_DICTLISTMIN */
  tess->event = ((ActiveRegion *) FUNC11( FUNC12( tess->dict )))->eUp->Org;
  FUNC0( tess );
  FUNC1( tess );
  FUNC2( tess );

  if ( !FUNC6( tess->mesh ) ) return 0;
  FUNC10( tess->mesh );

  return 1;
}