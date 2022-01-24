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
struct TYPE_2__ {scalar_t__ running; scalar_t__ enabled; } ;
struct event {TYPE_1__ result; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MALLOC_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct event*) ; 
 int /*<<< orphan*/  FUNC2 (struct event*,int) ; 
 int FUNC3 (struct event*) ; 
 int /*<<< orphan*/  FUNC4 (struct event*) ; 
 int /*<<< orphan*/  FUNC5 (struct event*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(void)
{
	struct event event;
	char *p;
	int i;

	p = FUNC7(MALLOC_SIZE);
	FUNC0(!p);

	FUNC2(&event, 0x84918F);

	FUNC0(FUNC3(&event));

	for (i = 0; i < MALLOC_SIZE; i += 0x10000)
		p[i] = i;

	FUNC4(&event);
	FUNC5(&event);

	FUNC0(event.result.running == 0);
	FUNC0(event.result.enabled == 0);

	FUNC1(&event);
	FUNC6(p);

	return 0;
}