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
struct plane {struct vec3 dir; int /*<<< orphan*/  dist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vec3*,struct vec3*,struct vec3*) ; 
 int /*<<< orphan*/  FUNC1 (struct vec3 const*,struct vec3*) ; 
 int /*<<< orphan*/  FUNC2 (struct vec3*,struct vec3*) ; 
 int /*<<< orphan*/  FUNC3 (struct vec3*,struct vec3 const*,struct vec3 const*) ; 

void FUNC4(struct plane *dst, const struct vec3 *v1,
		    const struct vec3 *v2, const struct vec3 *v3)
{
	struct vec3 temp;

	FUNC3(&temp, v2, v1);
	FUNC3(&dst->dir, v3, v1);
	FUNC0(&dst->dir, &temp, &dst->dir);
	FUNC2(&dst->dir, &dst->dir);
	dst->dist = FUNC1(v1, &dst->dir);
}