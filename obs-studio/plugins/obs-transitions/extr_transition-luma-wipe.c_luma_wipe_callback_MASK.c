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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/ * texture; } ;
struct luma_wipe_info {float softness; int /*<<< orphan*/  effect; int /*<<< orphan*/  ep_softness; int /*<<< orphan*/  invert_luma; int /*<<< orphan*/  ep_invert; int /*<<< orphan*/  ep_progress; TYPE_1__ luma_image; int /*<<< orphan*/  ep_l_tex; int /*<<< orphan*/  ep_b_tex; int /*<<< orphan*/  ep_a_tex; } ;
typedef  int /*<<< orphan*/  gs_texture_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *data, gs_texture_t *a, gs_texture_t *b,
			       float t, uint32_t cx, uint32_t cy)
{
	struct luma_wipe_info *lwipe = data;

	FUNC4(lwipe->ep_a_tex, a);
	FUNC4(lwipe->ep_b_tex, b);
	FUNC4(lwipe->ep_l_tex, lwipe->luma_image.texture);
	FUNC3(lwipe->ep_progress, t);

	FUNC2(lwipe->ep_invert, lwipe->invert_luma);
	FUNC3(lwipe->ep_softness, lwipe->softness);

	while (FUNC1(lwipe->effect, "LumaWipe"))
		FUNC0(NULL, 0, cx, cy);
}