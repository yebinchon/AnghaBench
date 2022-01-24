#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* anEdge; scalar_t__ inside; struct TYPE_9__* next; } ;
struct TYPE_8__ {struct TYPE_8__* Lnext; TYPE_1__* Org; } ;
struct TYPE_7__ {TYPE_4__ fHead; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  GLUtesselator ;
typedef  TYPE_2__ GLUmesh ;
typedef  TYPE_3__ GLUhalfEdge ;
typedef  TYPE_4__ GLUface ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_LINE_LOOP ; 

void FUNC3( GLUtesselator *tess, GLUmesh *mesh )
{
  GLUface *f;
  GLUhalfEdge *e;

  for( f = mesh->fHead.next; f != &mesh->fHead; f = f->next ) {
    if( f->inside ) {
      FUNC0( GL_LINE_LOOP );
      e = f->anEdge;
      do {
        FUNC2( e->Org->data ); 
	e = e->Lnext;
      } while( e != f->anEdge );
      FUNC1();
    }
  }
}