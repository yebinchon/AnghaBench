#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* anEdge; } ;
struct TYPE_9__ {struct TYPE_9__* next; struct TYPE_9__* prev; TYPE_1__* anEdge; } ;
struct TYPE_8__ {int /*<<< orphan*/  Oprev; struct TYPE_8__* Onext; TYPE_6__* Org; struct TYPE_8__* Sym; int /*<<< orphan*/ * Rface; int /*<<< orphan*/ * Lface; struct TYPE_8__* Lnext; } ;
typedef  TYPE_1__ GLUhalfEdge ;
typedef  TYPE_2__ GLUface ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4( GLUface *fZap )
{
  GLUhalfEdge *eStart = fZap->anEdge;
  GLUhalfEdge *e, *eNext, *eSym;
  GLUface *fPrev, *fNext;

  /* walk around face, deleting edges whose right face is also NULL */
  eNext = eStart->Lnext;
  do {
    e = eNext;
    eNext = e->Lnext;

    e->Lface = NULL;
    if( e->Rface == NULL ) {
      /* delete the edge -- see __gl_MeshDelete above */

      if( e->Onext == e ) {
	FUNC1( e->Org, NULL );
      } else {
	/* Make sure that e->Org points to a valid half-edge */
	e->Org->anEdge = e->Onext;
	FUNC2( e, e->Oprev );
      }
      eSym = e->Sym;
      if( eSym->Onext == eSym ) {
	FUNC1( eSym->Org, NULL );
      } else {
	/* Make sure that eSym->Org points to a valid half-edge */
	eSym->Org->anEdge = eSym->Onext;
	FUNC2( eSym, eSym->Oprev );
      }
      FUNC0( e );
    }
  } while( e != eStart );

  /* delete from circular doubly-linked list */
  fPrev = fZap->prev;
  fNext = fZap->next;
  fNext->prev = fPrev;
  fPrev->next = fNext;

  FUNC3( fZap );
}