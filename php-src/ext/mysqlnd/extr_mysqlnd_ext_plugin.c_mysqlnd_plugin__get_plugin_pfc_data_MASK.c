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
typedef  int /*<<< orphan*/  MYSQLND_PFC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 unsigned int const FUNC3 () ; 

__attribute__((used)) static void **
FUNC4(const MYSQLND_PFC * pfc, const unsigned int plugin_id)
{
	FUNC0("mysqlnd_plugin__get_plugin_pfc_data");
	FUNC1("plugin_id=%u", plugin_id);
	if (!pfc || plugin_id >= FUNC3()) {
		return NULL;
	}
	FUNC2((void *)((char *)pfc + sizeof(MYSQLND_PFC) + plugin_id * sizeof(void *)));
}