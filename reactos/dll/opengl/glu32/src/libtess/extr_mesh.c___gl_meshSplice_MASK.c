#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_1__* anEdge; } ;
struct TYPE_15__ {TYPE_1__* anEdge; } ;
struct TYPE_14__ {TYPE_9__* Lface; TYPE_7__* Org; } ;
typedef  int /*<<< orphan*/  GLUvertex ;
typedef  TYPE_1__ GLUhalfEdge ;
typedef  int /*<<< orphan*/  GLUface ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int TRUE ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 () ; 

int FUNC7( GLUhalfEdge *eOrg, GLUhalfEdge *eDst )
{
  int joiningLoops = FALSE;
  int joiningVertices = FALSE;

  if( eOrg == eDst ) return 1;

  if( eDst->Org != eOrg->Org ) {
    /* We are merging two disjoint vertices -- destroy eDst->Org */
    joiningVertices = TRUE;
    FUNC1( eDst->Org, eOrg->Org );
  }
  if( eDst->Lface != eOrg->Lface ) {
    /* We are connecting two disjoint loops -- destroy eDst->Lface */
    joiningLoops = TRUE;
    FUNC0( eDst->Lface, eOrg->Lface );
  }

  /* Change the edge structure */
  FUNC4( eDst, eOrg );

  if( ! joiningVertices ) {
    GLUvertex *newVertex= FUNC6();
    if (newVertex == NULL) return 0;

    /* We split one vertex into two -- the new vertex is eDst->Org.
     * Make sure the old vertex points to a valid half-edge.
     */
    FUNC3( newVertex, eDst, eOrg->Org );
    eOrg->Org->anEdge = eOrg;
  }
  if( ! joiningLoops ) {
    GLUface *newFace= FUNC5();  
    if (newFace == NULL) return 0;

    /* We split one loop into two -- the new loop is eDst->Lface.
     * Make sure the old face points to a valid half-edge.
     */
    FUNC2( newFace, eDst, eOrg->Lface );
    eOrg->Lface->anEdge = eOrg;
  }

  return 1;
}