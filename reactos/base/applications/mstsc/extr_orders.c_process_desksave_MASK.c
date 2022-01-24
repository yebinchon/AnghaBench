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
struct TYPE_3__ {int left; int top; int right; int bottom; scalar_t__ action; int /*<<< orphan*/  offset; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RD_BOOL ;
typedef  TYPE_1__ DESKSAVE_ORDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static void
FUNC6(STREAM s, DESKSAVE_ORDER * os, uint32 present, RD_BOOL delta)
{
	int width, height;

	if (present & 0x01)
		FUNC1(s, os->offset);

	if (present & 0x02)
		FUNC3(s, &os->left, delta);

	if (present & 0x04)
		FUNC3(s, &os->top, delta);

	if (present & 0x08)
		FUNC3(s, &os->right, delta);

	if (present & 0x10)
		FUNC3(s, &os->bottom, delta);

	if (present & 0x20)
		FUNC2(s, os->action);

	FUNC0(("DESKSAVE(l=%d,t=%d,r=%d,b=%d,off=%d,op=%d)\n",
	       os->left, os->top, os->right, os->bottom, os->offset, os->action));

	width = os->right - os->left + 1;
	height = os->bottom - os->top + 1;

	if (os->action == 0)
		FUNC5(os->offset, os->left, os->top, width, height);
	else
		FUNC4(os->offset, os->left, os->top, width, height);
}