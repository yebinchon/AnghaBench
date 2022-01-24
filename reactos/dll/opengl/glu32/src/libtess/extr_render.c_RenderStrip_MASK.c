#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {void* marked; } ;
struct TYPE_8__ {TYPE_1__* Dst; struct TYPE_8__* Onext; TYPE_5__* Lface; TYPE_2__* Org; struct TYPE_8__* Dprev; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  GLUtesselator ;
typedef  TYPE_3__ GLUhalfEdge ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_TRIANGLE_STRIP ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5( GLUtesselator *tess, GLUhalfEdge *e, long size )
{
  /* Render as many CCW triangles as possible in a strip starting from
   * edge "e".  The strip *should* contain exactly "size" triangles
   * (otherwise we've goofed up somewhere).
   */
  FUNC0( GL_TRIANGLE_STRIP );
  FUNC2( e->Org->data ); 
  FUNC2( e->Dst->data ); 

  while( ! FUNC3( e->Lface )) {
    e->Lface->marked = TRUE;
    --size;
    e = e->Dprev;
    FUNC2( e->Org->data ); 
    if( FUNC3( e->Lface )) break;

    e->Lface->marked = TRUE;
    --size;
    e = e->Onext;
    FUNC2( e->Dst->data ); 
  }

  FUNC4( size == 0 );
  FUNC1();
}