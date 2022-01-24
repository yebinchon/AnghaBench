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
struct quat {float x; float y; float z; float w; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct quat*,struct quat const*,struct quat const*) ; 

__attribute__((used)) static inline bool FUNC1(const struct quat *q1, const struct quat *q2,
			      float epsilon)
{
	struct quat test;
	FUNC0(&test, q1, q2);
	return test.x < epsilon && test.y < epsilon && test.z < epsilon &&
	       test.w < epsilon;
}