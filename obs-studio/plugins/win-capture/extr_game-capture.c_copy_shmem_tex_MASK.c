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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct game_capture {int pitch; int cy; int /*<<< orphan*/  texture; int /*<<< orphan*/ ** texture_buffers; scalar_t__ convert_16bit; int /*<<< orphan*/ ** texture_mutexes; TYPE_1__* shmem_data; } ;
struct TYPE_2__ {int last_tex; } ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct game_capture*,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct game_capture *gc)
{
	int cur_texture;
	HANDLE mutex = NULL;
	uint32_t pitch;
	int next_texture;
	uint8_t *data;

	if (!gc->shmem_data)
		return;

	cur_texture = gc->shmem_data->last_tex;

	if (cur_texture < 0 || cur_texture > 1)
		return;

	next_texture = cur_texture == 1 ? 0 : 1;

	if (FUNC5(gc->texture_mutexes[cur_texture])) {
		mutex = gc->texture_mutexes[cur_texture];

	} else if (FUNC5(gc->texture_mutexes[next_texture])) {
		mutex = gc->texture_mutexes[next_texture];
		cur_texture = next_texture;

	} else {
		return;
	}

	if (FUNC2(gc->texture, &data, &pitch)) {
		if (gc->convert_16bit) {
			FUNC1(gc, cur_texture, data, pitch);

		} else if (pitch == gc->pitch) {
			FUNC4(data, gc->texture_buffers[cur_texture],
			       pitch * gc->cy);
		} else {
			uint8_t *input = gc->texture_buffers[cur_texture];
			uint32_t best_pitch = pitch < gc->pitch ? pitch
								: gc->pitch;

			for (uint32_t y = 0; y < gc->cy; y++) {
				uint8_t *line_in = input + gc->pitch * y;
				uint8_t *line_out = data + pitch * y;
				FUNC4(line_out, line_in, best_pitch);
			}
		}

		FUNC3(gc->texture);
	}

	FUNC0(mutex);
}