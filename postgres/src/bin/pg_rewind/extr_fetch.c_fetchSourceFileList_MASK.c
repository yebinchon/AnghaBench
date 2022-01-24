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
 scalar_t__ datadir_source ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  process_source_file ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 

void
FUNC2(void)
{
	if (datadir_source)
		FUNC1(datadir_source, &process_source_file);
	else
		FUNC0();
}