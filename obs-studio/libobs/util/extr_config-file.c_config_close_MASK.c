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
struct config_section {int dummy; } ;
struct TYPE_6__ {size_t num; struct config_section* array; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; struct TYPE_5__* file; TYPE_2__ sections; TYPE_2__ defaults; } ;
typedef  TYPE_1__ config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct config_section*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(config_t *config)
{
	struct config_section *defaults, *sections;
	size_t i;

	if (!config)
		return;

	defaults = config->defaults.array;
	sections = config->sections.array;

	for (i = 0; i < config->defaults.num; i++)
		FUNC1(defaults + i);
	for (i = 0; i < config->sections.num; i++)
		FUNC1(sections + i);

	FUNC2(&config->defaults);
	FUNC2(&config->sections);
	FUNC0(config->file);
	FUNC3(&config->mutex);
	FUNC0(config);
}