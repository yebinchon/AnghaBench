#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_6__ {int /*<<< orphan*/  style; } ;
struct TYPE_5__ {int /*<<< orphan*/  fgcolour; int /*<<< orphan*/  bgcolour; int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  opcode; TYPE_2__ brush; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RD_BOOL ;
typedef  TYPE_1__ PATBLT_ORDER ;
typedef  int /*<<< orphan*/  BRUSH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(STREAM s, PATBLT_ORDER * os, uint32 present, RD_BOOL delta)
{
	BRUSH brush;

	if (present & 0x0001)
		FUNC4(s, &os->x, delta);

	if (present & 0x0002)
		FUNC4(s, &os->y, delta);

	if (present & 0x0004)
		FUNC4(s, &os->cx, delta);

	if (present & 0x0008)
		FUNC4(s, &os->cy, delta);

	if (present & 0x0010)
		FUNC2(s, os->opcode);

	if (present & 0x0020)
		FUNC3(s, &os->bgcolour);

	if (present & 0x0040)
		FUNC3(s, &os->fgcolour);

	FUNC5(s, &os->brush, present >> 7);

	FUNC0(("PATBLT(op=0x%x,x=%d,y=%d,cx=%d,cy=%d,bs=%d,bg=0x%x,fg=0x%x)\n", os->opcode, os->x,
	       os->y, os->cx, os->cy, os->brush.style, os->bgcolour, os->fgcolour));

	FUNC6(&brush, &os->brush);

	FUNC7(FUNC1(os->opcode), os->x, os->y, os->cx, os->cy,
		  &brush, os->bgcolour, os->fgcolour);
}