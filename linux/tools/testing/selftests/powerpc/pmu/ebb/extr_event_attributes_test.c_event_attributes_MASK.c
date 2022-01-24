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
struct TYPE_2__ {int freq; int sample_period; int enable_on_exec; int inherit; unsigned long long config; scalar_t__ pinned; scalar_t__ exclusive; } ;
struct event {TYPE_1__ attr; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct event*) ; 
 int /*<<< orphan*/  FUNC4 (struct event*) ; 
 int /*<<< orphan*/  FUNC5 (struct event*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct event*) ; 
 int FUNC7 (struct event*) ; 
 scalar_t__ FUNC8 (struct event*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct event*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 

int FUNC11(void)
{
	struct event event, leader;

	FUNC1(!FUNC2());

	FUNC5(&event, 0x1001e);
	FUNC6(&event);
	/* Expected to succeed */
	FUNC0(FUNC7(&event));
	FUNC3(&event);


	FUNC5(&event, 0x001e); /* CYCLES - no PMC specified */
	FUNC6(&event);
	/* Expected to fail, no PMC specified */
	FUNC0(FUNC7(&event) == 0);


	FUNC5(&event, 0x2001e);
	FUNC6(&event);
	event.attr.exclusive = 0;
	/* Expected to fail, not exclusive */
	FUNC0(FUNC7(&event) == 0);


	FUNC5(&event, 0x3001e);
	FUNC6(&event);
	event.attr.freq = 1;
	/* Expected to fail, sets freq */
	FUNC0(FUNC7(&event) == 0);


	FUNC5(&event, 0x4001e);
	FUNC6(&event);
	event.attr.sample_period = 1;
	/* Expected to fail, sets sample_period */
	FUNC0(FUNC7(&event) == 0);


	FUNC5(&event, 0x1001e);
	FUNC6(&event);
	event.attr.enable_on_exec = 1;
	/* Expected to fail, sets enable_on_exec */
	FUNC0(FUNC7(&event) == 0);


	FUNC5(&event, 0x1001e);
	FUNC6(&event);
	event.attr.inherit = 1;
	/* Expected to fail, sets inherit */
	FUNC0(FUNC7(&event) == 0);


	FUNC5(&leader, 0x1001e);
	FUNC6(&leader);
	FUNC0(FUNC7(&leader));

	FUNC5(&event, 0x20002);
	FUNC4(&event);

	/* Expected to succeed */
	FUNC0(FUNC9(&event, leader.fd));
	FUNC3(&leader);
	FUNC3(&event);


	FUNC5(&leader, 0x1001e);
	FUNC6(&leader);
	FUNC0(FUNC7(&leader));

	FUNC5(&event, 0x20002);

	/* Expected to fail, event doesn't request EBB, leader does */
	FUNC0(FUNC9(&event, leader.fd) == 0);
	FUNC3(&leader);


	FUNC5(&leader, 0x1001e);
	FUNC6(&leader);
	/* Clear the EBB flag */
	leader.attr.config &= ~(1ull << 63);

	FUNC0(FUNC7(&leader));

	FUNC5(&event, 0x20002);
	FUNC4(&event);

	/* Expected to fail, leader doesn't request EBB */
	FUNC0(FUNC9(&event, leader.fd) == 0);
	FUNC3(&leader);


	FUNC5(&leader, 0x1001e);
	FUNC6(&leader);
	leader.attr.exclusive = 0;
	/* Expected to fail, leader isn't exclusive */
	FUNC0(FUNC7(&leader) == 0);


	FUNC5(&leader, 0x1001e);
	FUNC6(&leader);
	leader.attr.pinned = 0;
	/* Expected to fail, leader isn't pinned */
	FUNC0(FUNC7(&leader) == 0);

	FUNC5(&event, 0x1001e);
	FUNC6(&event);
	/* Expected to fail, not a task event */
	FUNC1(FUNC10(1));
	FUNC0(FUNC8(&event, 0) == 0);

	return 0;
}