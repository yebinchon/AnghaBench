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
struct vec3 {int dummy; } ;
struct plane {struct vec3 dir; scalar_t__ dist; } ;
struct matrix3 {struct vec3 t; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vec3*,struct vec3*) ; 
 int /*<<< orphan*/  FUNC1 (struct vec3*,struct vec3*) ; 
 int /*<<< orphan*/  FUNC2 (struct vec3*,struct vec3*,struct matrix3 const*) ; 

void FUNC3(struct plane *dst, const struct plane *p,
			const struct matrix3 *m)
{
	struct vec3 temp;

	FUNC2(&dst->dir, &p->dir, m);
	FUNC1(&dst->dir, &dst->dir);

	FUNC2(&temp, &m->t, m);
	dst->dist = p->dist - FUNC0(&dst->dir, &temp);
}