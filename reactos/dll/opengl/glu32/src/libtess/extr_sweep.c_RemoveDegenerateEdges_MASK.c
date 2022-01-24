#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {struct TYPE_11__* next; struct TYPE_11__* Sym; struct TYPE_11__* Lnext; int /*<<< orphan*/  Dst; int /*<<< orphan*/  Org; } ;
struct TYPE_10__ {int /*<<< orphan*/  env; TYPE_1__* mesh; } ;
struct TYPE_9__ {TYPE_3__ eHead; } ;
typedef  TYPE_2__ GLUtesselator ;
typedef  TYPE_3__ GLUhalfEdge ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_3__*,TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4( GLUtesselator *tess )
/*
 * Remove zero-length edges, and contours with fewer than 3 vertices.
 */
{
  GLUhalfEdge *e, *eNext, *eLnext;
  GLUhalfEdge *eHead = &tess->mesh->eHead;

  /*LINTED*/
  for( e = eHead->next; e != eHead; e = eNext ) {
    eNext = e->next;
    eLnext = e->Lnext;

    if( FUNC1( e->Org, e->Dst ) && e->Lnext->Lnext != e ) {
      /* Zero-length edge, contour has at least 3 edges */

      FUNC0( tess, eLnext, e );	/* deletes e->Org */
      if ( !FUNC2( e ) ) FUNC3(tess->env,1); /* e is a self-loop */
      e = eLnext;
      eLnext = e->Lnext;
    }
    if( eLnext->Lnext == e ) {
      /* Degenerate contour (one or two edges) */

      if( eLnext != e ) {
	if( eLnext == eNext || eLnext == eNext->Sym ) { eNext = eNext->next; }
	if ( !FUNC2( eLnext ) ) FUNC3(tess->env,1);
      }
      if( e == eNext || e == eNext->Sym ) { eNext = eNext->next; }
      if ( !FUNC2( e ) ) FUNC3(tess->env,1);
    }
  }
}