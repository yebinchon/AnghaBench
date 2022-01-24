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
struct TYPE_5__ {int async_decoupled; int timing_set; int /*<<< orphan*/  audio_buf_mutex; } ;
typedef  TYPE_1__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC4(obs_source_t *source, bool decouple)
{
	if (!FUNC0(source, "obs_source_set_async_decoupled"))
		return;

	source->async_decoupled = decouple;
	if (decouple) {
		FUNC1(&source->audio_buf_mutex);
		source->timing_set = false;
		FUNC3(source, 0);
		FUNC2(&source->audio_buf_mutex);
	}
}