#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct calldata {int dummy; } ;
typedef  int /*<<< orphan*/  stack ;
struct TYPE_6__ {int /*<<< orphan*/  signals; } ;
struct TYPE_7__ {int enabled; TYPE_1__ context; } ;
typedef  TYPE_2__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct calldata*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct calldata*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct calldata*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct calldata*) ; 

void FUNC5(obs_source_t *source, bool enabled)
{
	struct calldata data;
	uint8_t stack[128];

	if (!FUNC3(source, "obs_source_set_enabled"))
		return;

	source->enabled = enabled;

	FUNC0(&data, stack, sizeof(stack));
	FUNC2(&data, "source", source);
	FUNC1(&data, "enabled", enabled);

	FUNC4(source->context.signals, "enable", &data);
}