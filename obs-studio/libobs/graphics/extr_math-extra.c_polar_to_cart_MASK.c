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
struct vec3 {float x; float z; float y; } ;

/* Variables and functions */
 float FUNC0 (float) ; 
 float FUNC1 (float) ; 
 int /*<<< orphan*/  FUNC2 (struct vec3*,struct vec3*) ; 

void FUNC3(struct vec3 *dst, const struct vec3 *v)
{
	struct vec3 cart;
	float sinx = FUNC0(v->x);
	float sinx_z = v->z * sinx;

	cart.x = sinx_z * FUNC1(v->y);
	cart.z = sinx_z * FUNC0(v->y);
	cart.y = v->z * FUNC1(v->x);

	FUNC2(dst, &cart);
}