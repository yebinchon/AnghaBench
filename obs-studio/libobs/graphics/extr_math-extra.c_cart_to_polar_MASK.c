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
struct vec3 {int z; int y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPSILON ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vec3*,struct vec3*) ; 
 int FUNC4 (struct vec3 const*) ; 
 int /*<<< orphan*/  FUNC5 (struct vec3*) ; 

void FUNC6(struct vec3 *dst, const struct vec3 *v)
{
	struct vec3 polar;
	polar.z = FUNC4(v);

	if (FUNC2(polar.z, 0.0f, EPSILON)) {
		FUNC5(&polar);
	} else {
		polar.x = FUNC0(v->y / polar.z);
		polar.y = FUNC1(v->x, v->z);
	}

	FUNC3(dst, &polar);
}