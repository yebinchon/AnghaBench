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
struct vec4 {void* w; void* z; void* y; void* x; } ;
struct matrix4 {int /*<<< orphan*/  t; int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct matrix4*,struct matrix4 const*) ; 
 int /*<<< orphan*/  FUNC1 (struct vec4*,struct vec4*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,struct vec4 const*) ; 

void FUNC3(struct vec4 *dst, const struct vec4 *v,
		    const struct matrix4 *m)
{
	struct vec4 temp;
	struct matrix4 transpose;

	FUNC0(&transpose, m);

	temp.x = FUNC2(&transpose.x, v);
	temp.y = FUNC2(&transpose.y, v);
	temp.z = FUNC2(&transpose.z, v);
	temp.w = FUNC2(&transpose.t, v);

	FUNC1(dst, &temp);
}