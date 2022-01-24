#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* eUp; } ;
struct TYPE_8__ {int /*<<< orphan*/ * Org; int /*<<< orphan*/ * Dst; } ;
struct TYPE_7__ {int /*<<< orphan*/ * event; } ;
typedef  scalar_t__ GLdouble ;
typedef  int /*<<< orphan*/  GLUvertex ;
typedef  TYPE_1__ GLUtesselator ;
typedef  TYPE_2__ GLUhalfEdge ;
typedef  TYPE_3__ ActiveRegion ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3( GLUtesselator *tess, ActiveRegion *reg1,
		    ActiveRegion *reg2 )
/*
 * Both edges must be directed from right to left (this is the canonical
 * direction for the upper edge of each region).
 *
 * The strategy is to evaluate a "t" value for each edge at the
 * current sweep line position, given by tess->event.  The calculations
 * are designed to be very stable, but of course they are not perfect.
 *
 * Special case: if both edge destinations are at the sweep event,
 * we sort the edges by slope (they would otherwise compare equally).
 */
{
  GLUvertex *event = tess->event;
  GLUhalfEdge *e1, *e2;
  GLdouble t1, t2;

  e1 = reg1->eUp;
  e2 = reg2->eUp;

  if( e1->Dst == event ) {
    if( e2->Dst == event ) {
      /* Two edges right of the sweep line which meet at the sweep event.
       * Sort them by slope.
       */
      if( FUNC2( e1->Org, e2->Org )) {
	return FUNC1( e2->Dst, e1->Org, e2->Org ) <= 0;
      }
      return FUNC1( e1->Dst, e2->Org, e1->Org ) >= 0;
    }
    return FUNC1( e2->Dst, event, e2->Org ) <= 0;
  }
  if( e2->Dst == event ) {
    return FUNC1( e1->Dst, event, e1->Org ) >= 0;
  }

  /* General case - compute signed distance *from* e1, e2 to event */
  t1 = FUNC0( e1->Dst, event, e1->Org );
  t2 = FUNC0( e2->Dst, event, e2->Org );
  return (t1 >= t2);
}