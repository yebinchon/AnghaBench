#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  Lface; int /*<<< orphan*/  Org; int /*<<< orphan*/  Dst; int /*<<< orphan*/  Lnext; struct TYPE_8__* Sym; } ;
typedef  int /*<<< orphan*/  GLUvertex ;
typedef  TYPE_1__ GLUhalfEdge ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 

GLUhalfEdge *FUNC4( GLUhalfEdge *eOrg )
{
  GLUhalfEdge *eNewSym;
  GLUhalfEdge *eNew = FUNC0( eOrg );
  if (eNew == NULL) return NULL;

  eNewSym = eNew->Sym;

  /* Connect the new edge appropriately */
  FUNC2( eNew, eOrg->Lnext );

  /* Set the vertex and face information */
  eNew->Org = eOrg->Dst;
  {
    GLUvertex *newVertex= FUNC3();
    if (newVertex == NULL) return NULL;

    FUNC1( newVertex, eNewSym, eNew->Org );
  }
  eNew->Lface = eNewSym->Lface = eOrg->Lface;

  return eNew;
}