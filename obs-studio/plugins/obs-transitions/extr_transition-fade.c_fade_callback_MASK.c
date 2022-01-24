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
struct fade_info {int /*<<< orphan*/  effect; int /*<<< orphan*/  fade_param; int /*<<< orphan*/  b_param; int /*<<< orphan*/  a_param; } ;
typedef  int /*<<< orphan*/  gs_texture_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *data, gs_texture_t *a, gs_texture_t *b, float t,
			  uint32_t cx, uint32_t cy)
{
	struct fade_info *fade = data;

	FUNC3(fade->a_param, a);
	FUNC3(fade->b_param, b);
	FUNC2(fade->fade_param, t);

	while (FUNC1(fade->effect, "Fade"))
		FUNC0(NULL, 0, cx, cy);
}