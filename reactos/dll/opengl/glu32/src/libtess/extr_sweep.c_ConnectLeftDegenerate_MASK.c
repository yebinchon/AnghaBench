#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
struct TYPE_31__ {scalar_t__ fixUpperEdge; TYPE_3__* eUp; } ;
struct TYPE_30__ {struct TYPE_30__* Onext; struct TYPE_30__* Oprev; struct TYPE_30__* Sym; int /*<<< orphan*/  Dst; int /*<<< orphan*/  Org; } ;
struct TYPE_29__ {int /*<<< orphan*/  env; } ;
struct TYPE_28__ {int /*<<< orphan*/  anEdge; } ;
typedef  TYPE_1__ GLUvertex ;
typedef  TYPE_2__ GLUtesselator ;
typedef  TYPE_3__ GLUhalfEdge ;
typedef  TYPE_4__ ActiveRegion ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_4__*,TYPE_3__*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FALSE ; 
 TYPE_4__* FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int TOLERANCE_NONZERO ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_4__* FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC13( GLUtesselator *tess,
				   ActiveRegion *regUp, GLUvertex *vEvent )
/*
 * The event vertex lies exacty on an already-processed edge or vertex.
 * Adding the new vertex involves splicing it into the already-processed
 * part of the mesh.
 */
{
  GLUhalfEdge *e, *eTopLeft, *eTopRight, *eLast;
  ActiveRegion *reg;

  e = regUp->eUp;
  if( FUNC7( e->Org, vEvent )) {
    /* e->Org is an unprocessed vertex - just combine them, and wait
     * for e->Org to be pulled from the queue
     */
    FUNC11( TOLERANCE_NONZERO );
    FUNC4( tess, e, vEvent->anEdge );
    return;
  }

  if( ! FUNC7( e->Dst, vEvent )) {
    /* General case -- splice vEvent into edge e which passes through it */
    if (FUNC10( e->Sym ) == NULL) FUNC12(tess->env,1);
    if( regUp->fixUpperEdge ) {
      /* This edge was fixable -- delete unused portion of original edge */
      if ( !FUNC8( e->Onext ) ) FUNC12(tess->env,1);
      regUp->fixUpperEdge = FALSE;
    }
    if ( !FUNC9( vEvent->anEdge, e ) ) FUNC12(tess->env,1);
    FUNC5( tess, vEvent ); /* recurse */
    return;
  }

  /* vEvent coincides with e->Dst, which has already been processed.
   * Splice in the additional right-going edges.
   */
  FUNC11( TOLERANCE_NONZERO );
  regUp = FUNC6( regUp );
  reg = FUNC3( regUp );
  eTopRight = reg->eUp->Sym;
  eTopLeft = eLast = eTopRight->Onext;
  if( reg->fixUpperEdge ) {
    /* Here e->Dst has only a single fixable edge going right.
     * We can delete it since now we have some real right-going edges.
     */
    FUNC11( eTopLeft != eTopRight );   /* there are some left edges too */
    FUNC1( tess, reg );
    if ( !FUNC8( eTopRight ) ) FUNC12(tess->env,1);
    eTopRight = eTopLeft->Oprev;
  }
  if ( !FUNC9( vEvent->anEdge, eTopRight ) ) FUNC12(tess->env,1);
  if( ! FUNC2( eTopLeft )) {
    /* e->Dst had no left-going edges -- indicate this to AddRightEdges() */
    eTopLeft = NULL;
  }
  FUNC0( tess, regUp, eTopRight->Onext, eLast, eTopLeft, TRUE );
}