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
struct TYPE_3__ {int costs; int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ ExplainState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 

ExplainState *
FUNC2(void)
{
	ExplainState *es = (ExplainState *) FUNC1(sizeof(ExplainState));

	/* Set default options (most fields can be left as zeroes). */
	es->costs = true;
	/* Prepare output buffer. */
	es->str = FUNC0();

	return es;
}