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
typedef  int /*<<< orphan*/  uint32_t ;
struct vec2 {int dummy; } ;
struct swipe_info {int /*<<< orphan*/  effect; int /*<<< orphan*/  swipe_param; scalar_t__ swipe_in; int /*<<< orphan*/  b_param; int /*<<< orphan*/  a_param; struct vec2 dir; } ;
typedef  int /*<<< orphan*/  gs_texture_t ;

/* Variables and functions */
 float FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct vec2*) ; 
 int /*<<< orphan*/  FUNC5 (struct vec2*,struct vec2*,float) ; 
 int /*<<< orphan*/  FUNC6 (struct vec2*,struct vec2*) ; 

__attribute__((used)) static void FUNC7(void *data, gs_texture_t *a, gs_texture_t *b,
			   float t, uint32_t cx, uint32_t cy)
{
	struct swipe_info *swipe = data;
	struct vec2 swipe_val = swipe->dir;

	if (swipe->swipe_in)
		FUNC6(&swipe_val, &swipe_val);

	t = FUNC0(t);

	FUNC5(&swipe_val, &swipe_val, swipe->swipe_in ? 1.0f - t : t);

	FUNC3(swipe->a_param, swipe->swipe_in ? b : a);
	FUNC3(swipe->b_param, swipe->swipe_in ? a : b);
	FUNC4(swipe->swipe_param, &swipe_val);

	while (FUNC2(swipe->effect, "Swipe"))
		FUNC1(NULL, 0, cx, cy);
}