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
struct quat {int w; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vec3*,struct quat const*) ; 
 int /*<<< orphan*/  FUNC1 (struct vec3*,struct vec3*,struct vec3*) ; 
 int /*<<< orphan*/  FUNC2 (struct vec3*,struct vec3*,struct vec3*) ; 
 int FUNC3 (struct vec3*,struct vec3*) ; 
 int /*<<< orphan*/  FUNC4 (struct vec3*,struct vec3*,int) ; 

void FUNC5(struct quat *dst, const struct quat *q1, const struct quat *q2)
{
	struct vec3 q1axis, q2axis;
	struct vec3 temp1, temp2;

	FUNC0(&q1axis, q1);
	FUNC0(&q2axis, q2);

	FUNC4(&temp1, &q2axis, q1->w);
	FUNC4(&temp2, &q1axis, q2->w);
	FUNC1(&temp1, &temp1, &temp2);
	FUNC2(&temp2, &q1axis, &q2axis);
	FUNC1((struct vec3 *)dst, &temp1, &temp2);

	dst->w = (q1->w * q2->w) - FUNC3(&q1axis, &q2axis);
}