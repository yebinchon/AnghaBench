#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int flags; } ;
struct TYPE_13__ {int /*<<< orphan*/  data; } ;
struct TYPE_15__ {scalar_t__ active_delay_ns; TYPE_2__ info; TYPE_1__ context; } ;
typedef  TYPE_3__ obs_output_t ;

/* Variables and functions */
 int OBS_OUTPUT_ENCODED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

void FUNC9(obs_output_t *output)
{
	bool encoded;
	if (!FUNC5(output, "obs_output_stop"))
		return;
	if (!output->context.data)
		return;
	if (!FUNC0(output) && !FUNC7(output))
		return;
	if (FUNC7(output)) {
		FUNC4(output);
		return;
	}

	encoded = (output->info.flags & OBS_OUTPUT_ENCODED) != 0;

	if (encoded && output->active_delay_ns) {
		FUNC3(output);

	} else if (!FUNC8(output)) {
		FUNC1(output, "stopping");
		FUNC2(output, false, FUNC6());
	}
}