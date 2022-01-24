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
struct matrix4 {int /*<<< orphan*/  t; int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct matrix4*,struct matrix4 const*,struct matrix4*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct vec3 const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,float,float,float,float) ; 

void FUNC3(struct matrix4 *dst, const struct matrix4 *m,
			 const struct vec3 *v)
{
	struct matrix4 temp;
	FUNC2(&temp.x, 1.0f, 0.0f, 0.0f, 0.0f);
	FUNC2(&temp.y, 0.0f, 1.0f, 0.0f, 0.0f);
	FUNC2(&temp.z, 0.0f, 0.0f, 1.0f, 0.0f);
	FUNC1(&temp.t, v);

	FUNC0(dst, m, &temp);
}