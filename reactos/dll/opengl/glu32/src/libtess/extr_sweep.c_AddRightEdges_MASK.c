#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {scalar_t__ windingNumber; void* dirty; int /*<<< orphan*/  inside; TYPE_1__* eUp; } ;
struct TYPE_27__ {scalar_t__ Org; scalar_t__ winding; int /*<<< orphan*/  Oprev; struct TYPE_27__* Onext; int /*<<< orphan*/  Sym; int /*<<< orphan*/  Dst; } ;
struct TYPE_26__ {int /*<<< orphan*/  env; } ;
struct TYPE_25__ {TYPE_3__* Sym; TYPE_3__* Rprev; } ;
typedef  scalar_t__ GLboolean ;
typedef  TYPE_2__ GLUtesselator ;
typedef  TYPE_3__ GLUhalfEdge ;
typedef  TYPE_4__ ActiveRegion ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_4__*) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__) ; 
 TYPE_4__* FUNC5 (TYPE_4__*) ; 
 void* TRUE ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12( GLUtesselator *tess, ActiveRegion *regUp,
       GLUhalfEdge *eFirst, GLUhalfEdge *eLast, GLUhalfEdge *eTopLeft,
       GLboolean cleanUp )
/*
 * Purpose: insert right-going edges into the edge dictionary, and update
 * winding numbers and mesh connectivity appropriately.  All right-going
 * edges share a common origin vOrg.  Edges are inserted CCW starting at
 * eFirst; the last edge inserted is eLast->Oprev.  If vOrg has any
 * left-going edges already processed, then eTopLeft must be the edge
 * such that an imaginary upward vertical segment from vOrg would be
 * contained between eTopLeft->Oprev and eTopLeft; otherwise eTopLeft
 * should be NULL.
 */
{
  ActiveRegion *reg, *regPrev;
  GLUhalfEdge *e, *ePrev;
  int firstTime = TRUE;

  /* Insert the new right-going edges in the dictionary */
  e = eFirst;
  do {
    FUNC10( FUNC6( e->Org, e->Dst ));
    FUNC0( tess, regUp, e->Sym );
    e = e->Onext;
  } while ( e != eLast );

  /* Walk *all* right-going edges from e->Org, in the dictionary order,
   * updating the winding numbers of each region, and re-linking the mesh
   * edges to match the dictionary ordering (if necessary).
   */
  if( eTopLeft == NULL ) {
    eTopLeft = FUNC5( regUp )->eUp->Rprev;
  }
  regPrev = regUp;
  ePrev = eTopLeft;
  for( ;; ) {
    reg = FUNC5( regPrev );
    e = reg->eUp->Sym;
    if( e->Org != ePrev->Org ) break;

    if( e->Onext != ePrev ) {
      /* Unlink e from its current position, and relink below ePrev */
      if ( !FUNC9( e->Oprev, e ) ) FUNC11(tess->env,1);
      if ( !FUNC9( ePrev->Oprev, e ) ) FUNC11(tess->env,1);
    }
    /* Compute the winding number and "inside" flag for the new regions */
    reg->windingNumber = regPrev->windingNumber - e->winding;
    reg->inside = FUNC4( tess, reg->windingNumber );

    /* Check for two outgoing edges with same slope -- process these
     * before any intersection tests (see example in __gl_computeInterior).
     */
    regPrev->dirty = TRUE;
    if( ! firstTime && FUNC2( tess, regPrev )) {
      FUNC1( e, ePrev );
      FUNC3( tess, regPrev );
      if ( !FUNC8( ePrev ) ) FUNC11(tess->env,1);
    }
    firstTime = FALSE;
    regPrev = reg;
    ePrev = e;
  }
  regPrev->dirty = TRUE;
  FUNC10( regPrev->windingNumber - e->winding == reg->windingNumber );

  if( cleanUp ) {
    /* Check for intersections between newly adjacent edges. */
    FUNC7( tess, regPrev );
  }
}