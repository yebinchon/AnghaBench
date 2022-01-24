#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct FaceCount {TYPE_1__* eStart; int /*<<< orphan*/  size; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_3__ {int /*<<< orphan*/  Rface; struct TYPE_3__* Oprev; int /*<<< orphan*/  Lface; struct TYPE_3__* Onext; } ;
typedef  TYPE_1__ GLUhalfEdge ;
typedef  int /*<<< orphan*/  GLUface ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RenderFan ; 

__attribute__((used)) static struct FaceCount FUNC3( GLUhalfEdge *eOrig )
{
  /* eOrig->Lface is the face we want to render.  We want to find the size
   * of a maximal fan around eOrig->Org.  To do this we just walk around
   * the origin vertex as far as possible in both directions.
   */
  struct FaceCount newFace = { 0, NULL, &RenderFan };
  GLUface *trail = NULL;
  GLUhalfEdge *e;

  for( e = eOrig; ! FUNC2( e->Lface ); e = e->Onext ) {
    FUNC0( e->Lface, trail );
    ++newFace.size;
  }
  for( e = eOrig; ! FUNC2( e->Rface ); e = e->Oprev ) {
    FUNC0( e->Rface, trail );
    ++newFace.size;
  }
  newFace.eStart = e;
  /*LINTED*/
  FUNC1( trail );
  return newFace;
}