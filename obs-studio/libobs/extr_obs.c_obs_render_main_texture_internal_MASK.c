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
struct obs_core_video {int /*<<< orphan*/ * render_texture; int /*<<< orphan*/  texture_rendered; } ;
typedef  int /*<<< orphan*/  gs_texture_t ;
typedef  int /*<<< orphan*/  gs_eparam_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;
typedef  enum gs_blend_type { ____Placeholder_gs_blend_type } gs_blend_type ;
struct TYPE_2__ {struct obs_core_video video; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_EFFECT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* obs ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(enum gs_blend_type src_c,
					     enum gs_blend_type dest_c,
					     enum gs_blend_type src_a,
					     enum gs_blend_type dest_a)
{
	struct obs_core_video *video;
	gs_texture_t *tex;
	gs_effect_t *effect;
	gs_eparam_t *param;

	if (!obs)
		return;

	video = &obs->video;
	if (!video->texture_rendered)
		return;

	tex = video->render_texture;
	effect = FUNC7(OBS_EFFECT_DEFAULT);
	param = FUNC4(effect, "image");
	FUNC6(param, tex);

	FUNC2();
	FUNC0(src_c, dest_c, src_a, dest_a);

	while (FUNC5(effect, "Draw"))
		FUNC3(tex, 0, 0, 0);

	FUNC1();
}