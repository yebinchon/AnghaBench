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
struct quat {int x; int y; int z; int /*<<< orphan*/  w; } ;

/* Variables and functions */
 float EPSILON ; 
 int /*<<< orphan*/  FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (struct quat*,struct quat const*) ; 
 int /*<<< orphan*/  FUNC2 (struct quat*,struct quat*,float) ; 
 float FUNC3 (float) ; 
 float FUNC4 (int) ; 

void FUNC5(struct quat *dst, const struct quat *q)
{
	float length = FUNC4(q->x * q->x + q->y * q->y + q->z * q->z);
	float sine = FUNC3(length);

	FUNC1(dst, q);
	sine = (length > EPSILON) ? (sine / length) : 1.0f;
	FUNC2(dst, dst, sine);
	dst->w = FUNC0(length);
}