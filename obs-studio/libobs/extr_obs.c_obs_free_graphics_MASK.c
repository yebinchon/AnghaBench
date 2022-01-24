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
struct obs_core_video {int /*<<< orphan*/ * graphics; int /*<<< orphan*/ * default_effect; int /*<<< orphan*/ * bilinear_lowres_effect; int /*<<< orphan*/ * area_effect; int /*<<< orphan*/ * lanczos_effect; int /*<<< orphan*/ * repeat_effect; int /*<<< orphan*/ * bicubic_effect; int /*<<< orphan*/ * conversion_effect; int /*<<< orphan*/ * solid_effect; int /*<<< orphan*/ * opaque_effect; int /*<<< orphan*/ * default_rect_effect; int /*<<< orphan*/  point_sampler; int /*<<< orphan*/  transparent_texture; } ;
struct TYPE_2__ {struct obs_core_video video; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* obs ; 

__attribute__((used)) static void FUNC6(void)
{
	struct obs_core_video *video = &obs->video;

	if (video->graphics) {
		FUNC2(video->graphics);

		FUNC5(video->transparent_texture);

		FUNC4(video->point_sampler);

		FUNC1(video->default_effect);
		FUNC1(video->default_rect_effect);
		FUNC1(video->opaque_effect);
		FUNC1(video->solid_effect);
		FUNC1(video->conversion_effect);
		FUNC1(video->bicubic_effect);
		FUNC1(video->repeat_effect);
		FUNC1(video->lanczos_effect);
		FUNC1(video->area_effect);
		FUNC1(video->bilinear_lowres_effect);
		video->default_effect = NULL;

		FUNC3();

		FUNC0(video->graphics);
		video->graphics = NULL;
	}
}