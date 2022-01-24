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

/* Variables and functions */
 scalar_t__ line ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int sort_loss ; 
 int sort_partial ; 
 int sort_size ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(char *heading, char *underline,
		     int loss, int size, int partial)
{
	FUNC1("%s%s", heading, underline);
	line = 0;
	sort_loss = loss;
	sort_size = size;
	sort_partial = partial;
	FUNC2();
	FUNC0();
}