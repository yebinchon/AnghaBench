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
struct TYPE_2__ {int /*<<< orphan*/  vars; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__ pset ; 

void
FUNC1(void)
{
	FUNC0(pset.vars, "DBNAME", NULL);
	FUNC0(pset.vars, "USER", NULL);
	FUNC0(pset.vars, "HOST", NULL);
	FUNC0(pset.vars, "PORT", NULL);
	FUNC0(pset.vars, "ENCODING", NULL);
	FUNC0(pset.vars, "SERVER_VERSION_NAME", NULL);
	FUNC0(pset.vars, "SERVER_VERSION_NUM", NULL);
}