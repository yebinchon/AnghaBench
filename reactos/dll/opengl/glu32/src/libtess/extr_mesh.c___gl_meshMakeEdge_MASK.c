#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct TYPE_9__* Sym; } ;
struct TYPE_8__ {int /*<<< orphan*/  fHead; int /*<<< orphan*/  vHead; int /*<<< orphan*/  eHead; } ;
typedef  int /*<<< orphan*/  GLUvertex ;
typedef  TYPE_1__ GLUmesh ;
typedef  TYPE_2__ GLUhalfEdge ;
typedef  int /*<<< orphan*/  GLUface ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

GLUhalfEdge *FUNC6( GLUmesh *mesh )
{
  GLUvertex *newVertex1= FUNC4();
  GLUvertex *newVertex2= FUNC4();
  GLUface *newFace= FUNC3();
  GLUhalfEdge *e;

  /* if any one is null then all get freed */
  if (newVertex1 == NULL || newVertex2 == NULL || newFace == NULL) {
     if (newVertex1 != NULL) FUNC5(newVertex1);
     if (newVertex2 != NULL) FUNC5(newVertex2);
     if (newFace != NULL) FUNC5(newFace);     
     return NULL;
  } 

  e = FUNC0( &mesh->eHead );
  if (e == NULL) {
     FUNC5(newVertex1);
     FUNC5(newVertex2);
     FUNC5(newFace);
     return NULL;
  }

  FUNC2( newVertex1, e, &mesh->vHead );
  FUNC2( newVertex2, e->Sym, &mesh->vHead );
  FUNC1( newFace, e, &mesh->fHead );
  return e;
}