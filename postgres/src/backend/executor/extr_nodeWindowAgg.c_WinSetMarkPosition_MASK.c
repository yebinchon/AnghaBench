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
typedef  scalar_t__ int64 ;
typedef  TYPE_1__* WindowObject ;
struct TYPE_6__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_2__ WindowAggState ;
struct TYPE_5__ {scalar_t__ markpos; scalar_t__ seekpos; int /*<<< orphan*/  readptr; int /*<<< orphan*/  markptr; TYPE_2__* winstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 

void
FUNC5(WindowObject winobj, int64 markpos)
{
	WindowAggState *winstate;

	FUNC0(FUNC1(winobj));
	winstate = winobj->winstate;

	if (markpos < winobj->markpos)
		FUNC2(ERROR, "cannot move WindowObject's mark position backward");
	FUNC3(winstate->buffer, winobj->markptr);
	if (markpos > winobj->markpos)
	{
		FUNC4(winstate->buffer,
							  markpos - winobj->markpos,
							  true);
		winobj->markpos = markpos;
	}
	FUNC3(winstate->buffer, winobj->readptr);
	if (markpos > winobj->seekpos)
	{
		FUNC4(winstate->buffer,
							  markpos - winobj->seekpos,
							  true);
		winobj->seekpos = markpos;
	}
}