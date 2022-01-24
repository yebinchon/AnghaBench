#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
struct TYPE_33__ {TYPE_3__* Sym; } ;
struct TYPE_32__ {scalar_t__ fixUpperEdge; scalar_t__ inside; TYPE_3__* eUp; } ;
struct TYPE_31__ {struct TYPE_31__* Sym; struct TYPE_31__* Dnext; TYPE_8__* Lnext; int /*<<< orphan*/  Dst; int /*<<< orphan*/  Org; } ;
struct TYPE_30__ {int /*<<< orphan*/  env; int /*<<< orphan*/  dict; } ;
struct TYPE_29__ {TYPE_8__* anEdge; } ;
typedef  TYPE_1__ GLUvertex ;
typedef  TYPE_2__ GLUtesselator ;
typedef  TYPE_3__ GLUhalfEdge ;
typedef  TYPE_4__ ActiveRegion ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_4__*,TYPE_8__*,TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_4__*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_4__* FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (TYPE_3__*,TYPE_8__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC13( GLUtesselator *tess, GLUvertex *vEvent )
/*
 * Purpose: connect a "left" vertex (one where both edges go right)
 * to the processed portion of the mesh.  Let R be the active region
 * containing vEvent, and let U and L be the upper and lower edge
 * chains of R.  There are two possibilities:
 *
 * - the normal case: split R into two regions, by connecting vEvent to
 *   the rightmost vertex of U or L lying to the left of the sweep line
 *
 * - the degenerate case: if vEvent is close enough to U or L, we
 *   merge vEvent into that edge chain.  The subcases are:
 *	- merging with the rightmost vertex of U or L
 *	- merging with the active edge of U or L
 *	- merging with an already-processed portion of U or L
 */
{
  ActiveRegion *regUp, *regLo, *reg;
  GLUhalfEdge *eUp, *eLo, *eNew;
  ActiveRegion tmp;

  /* assert( vEvent->anEdge->Onext->Onext == vEvent->anEdge ); */

  /* Get a pointer to the active region containing vEvent */
  tmp.eUp = vEvent->anEdge->Sym;
  /* __GL_DICTLISTKEY */ /* __gl_dictListSearch */
  regUp = (ActiveRegion *)FUNC10( FUNC11( tess->dict, &tmp ));
  regLo = FUNC6( regUp );
  eUp = regUp->eUp;
  eLo = regLo->eUp;

  /* Try merging with U or L first */
  if( FUNC4( eUp->Dst, vEvent, eUp->Org ) == 0 ) {
    FUNC3( tess, regUp, vEvent );
    return;
  }

  /* Connect vEvent to rightmost processed vertex of either chain.
   * e->Dst is the vertex that we will connect to vEvent.
   */
  reg = FUNC8( eLo->Dst, eUp->Dst ) ? regUp : regLo;

  if( regUp->inside || reg->fixUpperEdge) {
    if( reg == regUp ) {
      eNew = FUNC9( vEvent->anEdge->Sym, eUp->Lnext );
      if (eNew == NULL) FUNC12(tess->env,1);
    } else {
      GLUhalfEdge *tempHalfEdge= FUNC9( eLo->Dnext, vEvent->anEdge);
      if (tempHalfEdge == NULL) FUNC12(tess->env,1);

      eNew = tempHalfEdge->Sym;
    }
    if( reg->fixUpperEdge ) {
      if ( !FUNC5( reg, eNew ) ) FUNC12(tess->env,1);
    } else {
      FUNC2( tess, FUNC0( tess, regUp, eNew ));
    }
    FUNC7( tess, vEvent );
  } else {
    /* The new vertex is in a region which does not belong to the polygon.
     * We don''t need to connect this vertex to the rest of the mesh.
     */
    FUNC1( tess, regUp, vEvent->anEdge, vEvent->anEdge, NULL, TRUE );
  }
}