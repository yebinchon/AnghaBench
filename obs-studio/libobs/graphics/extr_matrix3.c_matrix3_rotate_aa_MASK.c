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
struct matrix3 {int dummy; } ;
struct axisang {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct matrix3*,struct axisang const*) ; 
 int /*<<< orphan*/  FUNC1 (struct matrix3*,struct matrix3 const*,struct matrix3*) ; 

void FUNC2(struct matrix3 *dst, const struct matrix3 *m,
		       const struct axisang *aa)
{
	struct matrix3 temp;
	FUNC0(&temp, aa);
	FUNC1(dst, m, &temp);
}