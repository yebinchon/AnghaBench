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

/* Variables and functions */
 float FUNC0 (struct vec3 const*,struct vec3 const*) ; 
 int /*<<< orphan*/  FUNC1 (struct vec3*,struct vec3 const*,float) ; 
 int /*<<< orphan*/  FUNC2 (struct vec3*,struct vec3 const*,struct vec3*) ; 

void FUNC3(struct vec3 *dst, const struct vec3 *v,
		  const struct vec3 *vec)
{
	struct vec3 temp;
	FUNC1(&temp, vec, FUNC0(v, vec) * 2.0f);
	FUNC2(dst, v, &temp);
}