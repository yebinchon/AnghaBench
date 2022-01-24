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
struct slide_info {int /*<<< orphan*/  effect; int /*<<< orphan*/  tex_b_dir_param; int /*<<< orphan*/  tex_a_dir_param; int /*<<< orphan*/  b_param; int /*<<< orphan*/  a_param; struct vec2 dir; } ;
typedef  int /*<<< orphan*/  gs_texture_t ;

/* Variables and functions */
 float FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct vec2*) ; 
 int /*<<< orphan*/  FUNC5 (struct vec2*,struct vec2*,float) ; 

__attribute__((used)) static void FUNC6(void *data, gs_texture_t *a, gs_texture_t *b,
			   float t, uint32_t cx, uint32_t cy)
{
	struct slide_info *slide = data;

	struct vec2 tex_a_dir = slide->dir;
	struct vec2 tex_b_dir = slide->dir;

	t = FUNC0(t);

	FUNC5(&tex_a_dir, &tex_a_dir, t);
	FUNC5(&tex_b_dir, &tex_b_dir, 1.0f - t);

	FUNC3(slide->a_param, a);
	FUNC3(slide->b_param, b);

	FUNC4(slide->tex_a_dir_param, &tex_a_dir);
	FUNC4(slide->tex_b_dir_param, &tex_b_dir);

	while (FUNC2(slide->effect, "Slide"))
		FUNC1(NULL, 0, cx, cy);
}