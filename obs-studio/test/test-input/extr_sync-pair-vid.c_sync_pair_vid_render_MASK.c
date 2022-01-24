#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct video_output_info {scalar_t__ fps_num; scalar_t__ fps_den; } ;
struct sync_pair_vid {int /*<<< orphan*/  black; int /*<<< orphan*/  white; int /*<<< orphan*/  tex; } ;
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ last_frame ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ starting_time ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 struct video_output_info* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC9(void *data, gs_effect_t *effect)
{
	struct sync_pair_vid *spv = data;

	uint64_t ts = FUNC4();
	if (!starting_time)
		starting_time = ts;

	uint64_t interval = FUNC6(FUNC3());
	const struct video_output_info *voi =
		FUNC7(FUNC3());
	uint64_t fps_num = voi->fps_num;
	uint64_t fps_den = voi->fps_den;

	bool whitelist = FUNC8(ts, interval, fps_num, fps_den);

#if 0
	if (last_frame != ts) {
		uint8_t *ptr;
		uint32_t linesize;
		if (gs_texture_map(spv->tex, &ptr, &linesize)) {
			fill_texture((uint32_t*)ptr, whitelist ? 0xFFFFFFFF : 0xFF000000);
			gs_texture_unmap(spv->tex);
		}
		last_frame = ts;
	}

	obs_source_draw(spv->tex, 0, 0, 0, 0, 0);
#else
	FUNC5(whitelist ? spv->white : spv->black, 0, 0, 0, 0, 0);
#endif
}