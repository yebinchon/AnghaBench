#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vec4 {int dummy; } ;
struct matrix4 {struct vec4 y; struct vec4 x; struct vec4 t; struct vec4 z; } ;
struct TYPE_6__ {float x; float y; } ;
struct TYPE_7__ {scalar_t__ rot; TYPE_1__ scale; int /*<<< orphan*/  pos; int /*<<< orphan*/  draw_transform; } ;
typedef  TYPE_2__ obs_sceneitem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct matrix4*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct matrix4*,struct matrix4*,struct matrix4*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct matrix4*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 float FUNC4 (struct vec4*) ; 
 int /*<<< orphan*/  FUNC5 (struct vec4*,float,float,float,float) ; 

__attribute__((used)) static void FUNC6(obs_sceneitem_t *item, obs_sceneitem_t *group)
{
	struct matrix4 transform;
	struct matrix4 mat;
	struct vec4 x_base;

	FUNC5(&x_base, 1.0f, 0.0f, 0.0f, 0.0f);

	FUNC0(&transform, &group->draw_transform);

	FUNC2(&item->pos, &transform);
	FUNC5(&transform.t, 0.0f, 0.0f, 0.0f, 1.0f);

	FUNC5(&mat.x, item->scale.x, 0.0f, 0.0f, 0.0f);
	FUNC5(&mat.y, 0.0f, item->scale.y, 0.0f, 0.0f);
	FUNC5(&mat.z, 0.0f, 0.0f, 1.0f, 0.0f);
	FUNC5(&mat.t, 0.0f, 0.0f, 0.0f, 1.0f);
	FUNC1(&mat, &mat, &transform);

	item->scale.x =
		FUNC4(&mat.x) * (item->scale.x > 0.0f ? 1.0f : -1.0f);
	item->scale.y =
		FUNC4(&mat.y) * (item->scale.y > 0.0f ? 1.0f : -1.0f);
	item->rot -= group->rot;

	FUNC3(item, false);
}