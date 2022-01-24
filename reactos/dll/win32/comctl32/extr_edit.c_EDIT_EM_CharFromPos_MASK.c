#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_7__ {void* y; void* x; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__ POINT ;
typedef  int LRESULT ;
typedef  void* INT ;
typedef  TYPE_2__ EDITSTATE ;

/* Variables and functions */
 void* FUNC0 (TYPE_2__*,void*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__) ; 

__attribute__((used)) static LRESULT FUNC5(EDITSTATE *es, INT x, INT y)
{
	POINT pt;
	RECT rc;
	INT index;

	pt.x = x;
	pt.y = y;
	FUNC2(es->hwndSelf, &rc);
	if (!FUNC4(&rc, pt))
		return -1;

	index = FUNC0(es, x, y, NULL);
	return FUNC3(index, FUNC1(es, index));
}