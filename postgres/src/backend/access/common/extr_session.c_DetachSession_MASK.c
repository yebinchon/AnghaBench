#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * area; int /*<<< orphan*/ * segment; } ;

/* Variables and functions */
 TYPE_1__* CurrentSession ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(void)
{
	/* Runs detach hooks. */
	FUNC1(CurrentSession->segment);
	CurrentSession->segment = NULL;
	FUNC0(CurrentSession->area);
	CurrentSession->area = NULL;
}