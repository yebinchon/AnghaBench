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
typedef  int uint32 ;
struct TYPE_3__ {int /*<<< orphan*/  fgcolour; scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; scalar_t__ fillmode; scalar_t__ opcode; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RD_BOOL ;
typedef  TYPE_1__ ELLIPSE_ORDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(STREAM s, ELLIPSE_ORDER * os, uint32 present, RD_BOOL delta)
{
	if (present & 0x01)
		FUNC3(s, &os->left, delta);

	if (present & 0x02)
		FUNC3(s, &os->top, delta);

	if (present & 0x04)
		FUNC3(s, &os->right, delta);

	if (present & 0x08)
		FUNC3(s, &os->bottom, delta);

	if (present & 0x10)
		FUNC1(s, os->opcode);

	if (present & 0x20)
		FUNC1(s, os->fillmode);

	if (present & 0x40)
		FUNC2(s, &os->fgcolour);

	FUNC0(("ELLIPSE(l=%d,t=%d,r=%d,b=%d,op=0x%x,fm=%d,fg=0x%x)\n", os->left, os->top,
	       os->right, os->bottom, os->opcode, os->fillmode, os->fgcolour));

	FUNC4(os->opcode - 1, os->fillmode, os->left, os->top, os->right - os->left,
		   os->bottom - os->top, NULL, 0, os->fgcolour);
}