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
struct vec4 {int dummy; } ;
struct vec3 {int dummy; } ;
struct matrix4 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vec3*,struct vec4*) ; 
 int /*<<< orphan*/  FUNC1 (struct vec4*,struct vec3 const*) ; 
 int /*<<< orphan*/  FUNC2 (struct vec4*,struct vec4*,struct matrix4 const*) ; 

void FUNC3(struct vec3 *dst, const struct vec3 *v,
		    const struct matrix4 *m)
{
	struct vec4 v4;
	FUNC1(&v4, v);
	FUNC2(&v4, &v4, m);
	FUNC0(dst, &v4);
}