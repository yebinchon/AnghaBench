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
struct TYPE_2__ {int transfer_mode; } ;

/* Variables and functions */
#define  TRANSFER_MODE_CLONE 130 
#define  TRANSFER_MODE_COPY 129 
#define  TRANSFER_MODE_LINK 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  new_cluster ; 
 TYPE_1__ user_opts ; 

void
FUNC8(void)
{
	FUNC7(&new_cluster);

	FUNC6();
	FUNC0();

	FUNC5();

	switch (user_opts.transfer_mode)
	{
		case TRANSFER_MODE_CLONE:
			FUNC1();
			break;
		case TRANSFER_MODE_COPY:
			break;
		case TRANSFER_MODE_LINK:
			FUNC3();
			break;
	}

	FUNC4(&new_cluster);

	FUNC2(&new_cluster);
}