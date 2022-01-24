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

/* Variables and functions */
 int /*<<< orphan*/  EPSILON ; 
 float LARGE_EPSILON ; 
 int /*<<< orphan*/  FUNC0 (struct vec3*,struct vec3*,struct vec3 const*) ; 
 scalar_t__ FUNC1 (struct vec3 const*,struct vec3 const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vec3*,struct vec3 const*) ; 
 float FUNC3 (struct vec3*) ; 
 int /*<<< orphan*/  FUNC4 (struct vec3*,struct vec3*,float) ; 
 int /*<<< orphan*/  FUNC5 (struct vec3*,struct vec3 const*,struct vec3 const*) ; 

void FUNC6(struct vec3 *dst, const struct vec3 *v1, const struct vec3 *v2,
		 float torque, float min_adjust, float t)
{
	struct vec3 line, dir;
	float orig_dist, torque_dist, adjust_dist;

	if (FUNC1(v1, v2, EPSILON)) {
		FUNC2(dst, v1);
		return;
	}

	FUNC5(&line, v2, v1);
	orig_dist = FUNC3(&line);
	FUNC4(&dir, &line, 1.0f / orig_dist);

	torque_dist = orig_dist * torque; /* use distance to determine speed */
	if (torque_dist < min_adjust)     /* prevent from going too slow */
		torque_dist = min_adjust;

	adjust_dist = torque_dist * t;

	if (adjust_dist <= (orig_dist - LARGE_EPSILON)) {
		FUNC4(dst, &dir, adjust_dist);
		FUNC0(dst, dst, v1); /* add torque */
	} else {
		FUNC2(dst, v2); /* clamp if overshoot */
	}
}