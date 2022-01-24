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
struct dfa {int /*<<< orphan*/ * mallocarea; int /*<<< orphan*/ * incarea; int /*<<< orphan*/ * outsarea; int /*<<< orphan*/ * statesarea; int /*<<< orphan*/ * ssets; scalar_t__ cptsmalloced; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct dfa *d)
{
	if (d->cptsmalloced)
	{
		if (d->ssets != NULL)
			FUNC0(d->ssets);
		if (d->statesarea != NULL)
			FUNC0(d->statesarea);
		if (d->outsarea != NULL)
			FUNC0(d->outsarea);
		if (d->incarea != NULL)
			FUNC0(d->incarea);
	}

	if (d->mallocarea != NULL)
		FUNC0(d->mallocarea);
}