#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct config_item {char* value; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  defaults; } ;
typedef  TYPE_1__ config_t ;

/* Variables and functions */
 struct config_item* FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

const char *FUNC3(config_t *config, const char *section,
				      const char *name)
{
	const struct config_item *item;
	const char *value = NULL;

	FUNC1(&config->mutex);

	item = FUNC0(&config->defaults, section, name);
	if (item)
		value = item->value;

	FUNC2(&config->mutex);
	return value;
}