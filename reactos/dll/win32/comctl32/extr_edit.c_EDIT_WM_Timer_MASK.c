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
struct TYPE_5__ {scalar_t__ region_posx; } ;
typedef  TYPE_1__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static void FUNC2(EDITSTATE *es)
{
	if (es->region_posx < 0) {
		FUNC0(es, TRUE);
	} else if (es->region_posx > 0) {
		FUNC1(es, TRUE);
	}
/*
 *	FIXME: gotta do some vertical scrolling here, like
 *		EDIT_EM_LineScroll(hwnd, 0, 1);
 */
}