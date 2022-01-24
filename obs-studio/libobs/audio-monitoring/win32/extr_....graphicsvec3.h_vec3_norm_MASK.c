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
struct vec3 {int /*<<< orphan*/  m; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (float) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 float FUNC3 (float) ; 
 float FUNC4 (struct vec3 const*,struct vec3 const*) ; 

__attribute__((used)) static inline void FUNC5(struct vec3 *dst, const struct vec3 *v)
{
	float dot_val = FUNC4(v, v);
	dst->m = (dot_val > 0.0f)
			 ? FUNC0(v->m, FUNC1(1.0f / FUNC3(dot_val)))
			 : FUNC2();
}