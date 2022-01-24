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
struct quat {float w; } ;

/* Variables and functions */
 float EPSILON ; 
 float FUNC0 (float) ; 
 float FUNC1 (float) ; 
 int /*<<< orphan*/  FUNC2 (struct quat*,struct quat const*) ; 
 int /*<<< orphan*/  FUNC3 (struct quat*,struct quat*,float) ; 
 float FUNC4 (float) ; 

void FUNC5(struct quat *dst, const struct quat *q)
{
	float angle = FUNC0(q->w);
	float sine = FUNC4(angle);
	float w = q->w;

	FUNC2(dst, q);
	dst->w = 0.0f;

	if ((FUNC1(w) < 1.0f) && (FUNC1(sine) >= EPSILON)) {
		sine = angle / sine;
		FUNC3(dst, dst, sine);
	}
}