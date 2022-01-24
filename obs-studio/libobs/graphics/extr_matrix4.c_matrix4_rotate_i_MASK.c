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
struct matrix4 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct matrix4*,struct quat const*) ; 
 int /*<<< orphan*/  FUNC1 (struct matrix4*,struct matrix4*,struct matrix4 const*) ; 

void FUNC2(struct matrix4 *dst, const struct quat *q,
		      const struct matrix4 *m)
{
	struct matrix4 temp;
	FUNC0(&temp, q);
	FUNC1(dst, &temp, m);
}