#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int s; int t; } ;
typedef  int /*<<< orphan*/  GLdouble ;
typedef  TYPE_1__ GLUvertex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_1__*) ; 

void FUNC8( GLUvertex *o1, GLUvertex *d1,
			 GLUvertex *o2, GLUvertex *d2,
			 GLUvertex *v )
/* Given edges (o1,d1) and (o2,d2), compute their point of intersection.
 * The computed point is guaranteed to lie in the intersection of the
 * bounding rectangles defined by each edge.
 */
{
  GLdouble z1, z2;

  /* This is certainly not the most efficient way to find the intersection
   * of two line segments, but it is very numerically stable.
   *
   * Strategy: find the two middle vertices in the VertLeq ordering,
   * and interpolate the intersection s-value from these.  Then repeat
   * using the TransLeq ordering to find the intersection t-value.
   */

  if( ! FUNC7( o1, d1 )) { FUNC3( o1, d1 ); }
  if( ! FUNC7( o2, d2 )) { FUNC3( o2, d2 ); }
  if( ! FUNC7( o1, o2 )) { FUNC3( o1, o2 ); FUNC3( d1, d2 ); }

  if( ! FUNC7( o2, d1 )) {
    /* Technically, no intersection -- do our best */
    v->s = (o2->s + d1->s) / 2;
  } else if( FUNC7( d1, d2 )) {
    /* Interpolate between o2 and d1 */
    z1 = FUNC0( o1, o2, d1 );
    z2 = FUNC0( o2, d1, d2 );
    if( z1+z2 < 0 ) { z1 = -z1; z2 = -z2; }
    v->s = FUNC2( z1, o2->s, z2, d1->s );
  } else {
    /* Interpolate between o2 and d2 */
    z1 = FUNC1( o1, o2, d1 );
    z2 = -FUNC1( o1, d2, d1 );
    if( z1+z2 < 0 ) { z1 = -z1; z2 = -z2; }
    v->s = FUNC2( z1, o2->s, z2, d2->s );
  }

  /* Now repeat the process for t */

  if( ! FUNC5( o1, d1 )) { FUNC3( o1, d1 ); }
  if( ! FUNC5( o2, d2 )) { FUNC3( o2, d2 ); }
  if( ! FUNC5( o1, o2 )) { FUNC3( o1, o2 ); FUNC3( d1, d2 ); }

  if( ! FUNC5( o2, d1 )) {
    /* Technically, no intersection -- do our best */
    v->t = (o2->t + d1->t) / 2;
  } else if( FUNC5( d1, d2 )) {
    /* Interpolate between o2 and d1 */
    z1 = FUNC4( o1, o2, d1 );
    z2 = FUNC4( o2, d1, d2 );
    if( z1+z2 < 0 ) { z1 = -z1; z2 = -z2; }
    v->t = FUNC2( z1, o2->t, z2, d1->t );
  } else {
    /* Interpolate between o2 and d2 */
    z1 = FUNC6( o1, o2, d1 );
    z2 = -FUNC6( o1, d2, d1 );
    if( z1+z2 < 0 ) { z1 = -z1; z2 = -z2; }
    v->t = FUNC2( z1, o2->t, z2, d2->t );
  }
}