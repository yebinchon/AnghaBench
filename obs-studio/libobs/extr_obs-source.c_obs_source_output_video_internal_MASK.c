#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct obs_source_frame {int /*<<< orphan*/  refs; } ;
struct TYPE_5__ {int async_active; int /*<<< orphan*/  async_mutex; int /*<<< orphan*/  async_frames; } ;
typedef  TYPE_1__ obs_source_t ;

/* Variables and functions */
 struct obs_source_frame* FUNC0 (TYPE_1__*,struct obs_source_frame const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct obs_source_frame**) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_source_frame*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(obs_source_t *source,
				 const struct obs_source_frame *frame)
{
	if (!FUNC3(source, "obs_source_output_video"))
		return;

	if (!frame) {
		source->async_active = false;
		return;
	}

	struct obs_source_frame *output = !!frame ? FUNC0(source, frame)
						  : NULL;

	/* ------------------------------------------- */
	FUNC5(&source->async_mutex);
	if (output) {
		if (FUNC4(&output->refs) == 0) {
			FUNC2(output);
			output = NULL;
		} else {
			FUNC1(source->async_frames, &output);
			source->async_active = true;
		}
	}
	FUNC6(&source->async_mutex);
}