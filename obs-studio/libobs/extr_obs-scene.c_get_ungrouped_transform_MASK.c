#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vec4 {int dummy; } ;
struct vec2 {float x; float y; } ;
struct matrix4 {struct vec4 y; struct vec4 x; struct vec4 t; struct vec4 z; } ;
struct TYPE_3__ {scalar_t__ rot; int /*<<< orphan*/  draw_transform; } ;
typedef  TYPE_1__ obs_sceneitem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct matrix4*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct matrix4*,struct matrix4*,struct matrix4*) ; 
 int /*<<< orphan*/  FUNC2 (struct vec2*,struct matrix4*) ; 
 float FUNC3 (struct vec4*) ; 
 int /*<<< orphan*/  FUNC4 (struct vec4*,float,float,float,float) ; 

__attribute__((used)) static void FUNC5(obs_sceneitem_t *group, struct vec2 *pos,
				    struct vec2 *scale, float *rot)
{
	struct matrix4 transform;
	struct matrix4 mat;
	struct vec4 x_base;

	FUNC4(&x_base, 1.0f, 0.0f, 0.0f, 0.0f);

	FUNC0(&transform, &group->draw_transform);

	FUNC2(pos, &transform);
	FUNC4(&transform.t, 0.0f, 0.0f, 0.0f, 1.0f);

	FUNC4(&mat.x, scale->x, 0.0f, 0.0f, 0.0f);
	FUNC4(&mat.y, 0.0f, scale->y, 0.0f, 0.0f);
	FUNC4(&mat.z, 0.0f, 0.0f, 1.0f, 0.0f);
	FUNC4(&mat.t, 0.0f, 0.0f, 0.0f, 1.0f);
	FUNC1(&mat, &mat, &transform);

	scale->x = FUNC3(&mat.x) * (scale->x > 0.0f ? 1.0f : -1.0f);
	scale->y = FUNC3(&mat.y) * (scale->y > 0.0f ? 1.0f : -1.0f);
	*rot += group->rot;
}