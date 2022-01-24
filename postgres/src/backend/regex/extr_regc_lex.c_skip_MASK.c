#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vars {scalar_t__* now; int cflags; } ;
typedef  scalar_t__ chr ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (char) ; 
 int FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int REG_EXPANDED ; 
 int /*<<< orphan*/  REG_UNONPOSIX ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static void
FUNC6(struct vars *v)
{
	const chr  *start = v->now;

	FUNC4(v->cflags & REG_EXPANDED);

	for (;;)
	{
		while (!FUNC0() && FUNC5(*v->now))
			v->now++;
		if (FUNC0() || *v->now != FUNC1('#'))
			break;				/* NOTE BREAK OUT */
		FUNC4(FUNC2('#'));
		while (!FUNC0() && *v->now != FUNC1('\n'))
			v->now++;
		/* leave the newline to be picked up by the iscspace loop */
	}

	if (v->now != start)
		FUNC3(REG_UNONPOSIX);
}