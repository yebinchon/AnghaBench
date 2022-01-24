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
struct TYPE_7__ {int /*<<< orphan*/  sync_offset; TYPE_1__ context; } ;
typedef  TYPE_2__ obs_source_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct calldata*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct calldata*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct calldata*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct calldata*,char*,TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct calldata*) ; 

void FUNC6(obs_source_t *source, int64_t offset)
{
	if (FUNC4(source, "obs_source_set_sync_offset")) {
		struct calldata data;
		uint8_t stack[128];

		FUNC0(&data, stack, sizeof(stack));
		FUNC3(&data, "source", source);
		FUNC2(&data, "offset", offset);

		FUNC5(source->context.signals, "audio_sync",
				      &data);

		source->sync_offset = FUNC1(&data, "offset");
	}
}