#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct calldata {int dummy; } ;
struct TYPE_8__ {char* name; int /*<<< orphan*/  signals; int /*<<< orphan*/  private; } ;
struct TYPE_7__ {TYPE_4__ context; } ;
typedef  TYPE_1__ obs_source_t ;
struct TYPE_9__ {int /*<<< orphan*/  signals; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct calldata*) ; 
 int /*<<< orphan*/  FUNC3 (struct calldata*) ; 
 int /*<<< orphan*/  FUNC4 (struct calldata*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct calldata*,char*,char*) ; 
 TYPE_5__* obs ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,struct calldata*) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 

void FUNC10(obs_source_t *source, const char *name)
{
	if (!FUNC7(source, "obs_source_set_name"))
		return;

	if (!name || !*name || !source->context.name ||
	    FUNC9(name, source->context.name) != 0) {
		struct calldata data;
		char *prev_name = FUNC1(source->context.name);
		FUNC6(&source->context, name);

		FUNC3(&data);
		FUNC4(&data, "source", source);
		FUNC5(&data, "new_name", source->context.name);
		FUNC5(&data, "prev_name", prev_name);
		if (!source->context.private)
			FUNC8(obs->signals, "source_rename",
					      &data);
		FUNC8(source->context.signals, "rename", &data);
		FUNC2(&data);
		FUNC0(prev_name);
	}
}