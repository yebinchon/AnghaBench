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
struct vec3 {float x; float y; float z; } ;
struct matrix4 {int /*<<< orphan*/  t; int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct matrix4*,struct matrix4 const*,struct matrix4*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,float,float,float,float) ; 

void FUNC2(struct matrix4 *dst, const struct matrix4 *m,
		   const struct vec3 *v)
{
	struct matrix4 temp;
	FUNC1(&temp.x, v->x, 0.0f, 0.0f, 0.0f);
	FUNC1(&temp.y, 0.0f, v->y, 0.0f, 0.0f);
	FUNC1(&temp.z, 0.0f, 0.0f, v->z, 0.0f);
	FUNC1(&temp.t, 0.0f, 0.0f, 0.0f, 1.0f);
	FUNC0(dst, m, &temp);
}