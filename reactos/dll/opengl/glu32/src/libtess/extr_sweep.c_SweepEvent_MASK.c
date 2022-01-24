#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {TYPE_3__* eUp; } ;
struct TYPE_26__ {struct TYPE_26__* Onext; int /*<<< orphan*/ * activeRegion; } ;
struct TYPE_25__ {int /*<<< orphan*/  env; TYPE_1__* event; } ;
struct TYPE_24__ {TYPE_3__* anEdge; } ;
typedef  TYPE_1__ GLUvertex ;
typedef  TYPE_2__ GLUtesselator ;
typedef  TYPE_3__ GLUhalfEdge ;
typedef  TYPE_4__ ActiveRegion ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_4__*,TYPE_3__*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_3__* FUNC4 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8( GLUtesselator *tess, GLUvertex *vEvent )
/*
 * Does everything necessary when the sweep line crosses a vertex.
 * Updates the mesh and the edge dictionary.
 */
{
  ActiveRegion *regUp, *reg;
  GLUhalfEdge *e, *eTopLeft, *eBottomLeft;

  tess->event = vEvent; 	/* for access in EdgeLeq() */
  FUNC3( tess );

  /* Check if this vertex is the right endpoint of an edge that is
   * already in the dictionary.  In this case we don't need to waste
   * time searching for the location to insert new edges.
   */
  e = vEvent->anEdge;
  while( e->activeRegion == NULL ) {
    e = e->Onext;
    if( e == vEvent->anEdge ) {
      /* All edges go right -- not incident to any processed edges */
      FUNC1( tess, vEvent );
      return;
    }
  }

  /* Processing consists of two phases: first we "finish" all the
   * active regions where both the upper and lower edges terminate
   * at vEvent (ie. vEvent is closing off these regions).
   * We mark these faces "inside" or "outside" the polygon according
   * to their winding number, and delete the edges from the dictionary.
   * This takes care of all the left-going edges from vEvent.
   */
  regUp = FUNC6( e->activeRegion );
  if (regUp == NULL) FUNC7(tess->env,1);
  reg = FUNC5( regUp );
  eTopLeft = reg->eUp;
  eBottomLeft = FUNC4( tess, reg, NULL );

  /* Next we process all the right-going edges from vEvent.  This
   * involves adding the edges to the dictionary, and creating the
   * associated "active regions" which record information about the
   * regions between adjacent dictionary edges.
   */
  if( eBottomLeft->Onext == eTopLeft ) {
    /* No right-going edges -- add a temporary "fixable" edge */
    FUNC2( tess, regUp, eBottomLeft );
  } else {
    FUNC0( tess, regUp, eBottomLeft->Onext, eTopLeft, eTopLeft, TRUE );
  }
}