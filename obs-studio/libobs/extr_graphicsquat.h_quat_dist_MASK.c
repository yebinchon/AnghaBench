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
struct quat {int dummy; } ;

/* Variables and functions */
 float FUNC0 (struct quat*,struct quat*) ; 
 int /*<<< orphan*/  FUNC1 (struct quat*,struct quat const*,struct quat const*) ; 
 float FUNC2 (float) ; 

__attribute__((used)) static inline float FUNC3(const struct quat *q1, const struct quat *q2)
{
	struct quat temp;
	float dot_val;

	FUNC1(&temp, q1, q2);
	dot_val = FUNC0(&temp, &temp);
	return (dot_val > 0.0f) ? FUNC2(dot_val) : 0.0f;
}