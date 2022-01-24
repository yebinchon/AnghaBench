#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ num_old_tablespaces; } ;
struct TYPE_5__ {int /*<<< orphan*/  tablespace_suffix; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ new_cluster ; 
 TYPE_1__ old_cluster ; 
 TYPE_2__ os_info ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(void)
{
	FUNC0();

	FUNC2(&old_cluster);
	FUNC2(&new_cluster);

	if (os_info.num_old_tablespaces > 0 &&
		FUNC3(old_cluster.tablespace_suffix, new_cluster.tablespace_suffix) == 0)
		FUNC1("Cannot upgrade to/from the same system catalog version when\n"
				 "using tablespaces.\n");
}