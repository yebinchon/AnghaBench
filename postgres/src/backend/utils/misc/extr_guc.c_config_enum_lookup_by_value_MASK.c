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
struct config_enum_entry {char const* name; int val; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct config_enum {TYPE_1__ gen; struct config_enum_entry* options; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

const char *
FUNC1(struct config_enum *record, int val)
{
	const struct config_enum_entry *entry;

	for (entry = record->options; entry && entry->name; entry++)
	{
		if (entry->val == val)
			return entry->name;
	}

	FUNC0(ERROR, "could not find enum option %d for %s",
		 val, record->gen.name);
	return NULL;				/* silence compiler */
}