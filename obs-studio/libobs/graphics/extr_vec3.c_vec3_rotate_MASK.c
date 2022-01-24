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
struct vec3 {float w; void* z; void* y; void* x; } ;
struct matrix3 {int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vec3*,struct vec3 const*) ; 
 void* FUNC1 (struct vec3*,int /*<<< orphan*/ *) ; 

void FUNC2(struct vec3 *dst, const struct vec3 *v,
		 const struct matrix3 *m)
{
	struct vec3 temp;
	FUNC0(&temp, v);

	dst->x = FUNC1(&temp, &m->x);
	dst->y = FUNC1(&temp, &m->y);
	dst->z = FUNC1(&temp, &m->z);
	dst->w = 0.0f;
}