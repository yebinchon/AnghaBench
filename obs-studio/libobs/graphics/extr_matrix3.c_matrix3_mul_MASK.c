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
typedef  struct matrix3 {int /*<<< orphan*/  t; int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } const matrix3 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct matrix3 const*,struct matrix3 const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct matrix3 const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct matrix3 const*) ; 

void FUNC3(struct matrix3 *dst, const struct matrix3 *m1,
		 const struct matrix3 *m2)
{
	if (dst == m2) {
		struct matrix3 temp;
		FUNC1(&temp.x, &m1->x, m2);
		FUNC1(&temp.y, &m1->y, m2);
		FUNC1(&temp.z, &m1->z, m2);
		FUNC2(&temp.t, &m1->t, m2);
		FUNC0(dst, &temp);
	} else {
		FUNC1(&dst->x, &m1->x, m2);
		FUNC1(&dst->y, &m1->y, m2);
		FUNC1(&dst->z, &m1->z, m2);
		FUNC2(&dst->t, &m1->t, m2);
	}
}