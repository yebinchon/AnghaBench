#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  format_rect; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  INT ;
typedef  TYPE_1__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static void FUNC3(EDITSTATE *es, INT start, INT end)
{
	RECT line_rect;
	RECT rc;

	FUNC0(es, 0, start, end, &line_rect);
	if (FUNC2(&rc, &line_rect, &es->format_rect))
		FUNC1(es, &rc, TRUE);
}