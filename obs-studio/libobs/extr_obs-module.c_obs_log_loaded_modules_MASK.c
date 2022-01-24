#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  file; struct TYPE_3__* next; } ;
typedef  TYPE_1__ obs_module_t ;
struct TYPE_4__ {TYPE_1__* first_module; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* obs ; 

void FUNC1(void)
{
	FUNC0(LOG_INFO, "  Loaded Modules:");

	for (obs_module_t *mod = obs->first_module; !!mod; mod = mod->next)
		FUNC0(LOG_INFO, "    %s", mod->file);
}