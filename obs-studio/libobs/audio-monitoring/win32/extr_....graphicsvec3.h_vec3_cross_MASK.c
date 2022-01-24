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
typedef  int /*<<< orphan*/  __m128 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct vec3 *dst, const struct vec3 *v1,
			      const struct vec3 *v2)
{
	__m128 s1v1 = FUNC2(v1->m, v1->m, FUNC0(3, 0, 2, 1));
	__m128 s1v2 = FUNC2(v2->m, v2->m, FUNC0(3, 1, 0, 2));
	__m128 s2v1 = FUNC2(v1->m, v1->m, FUNC0(3, 1, 0, 2));
	__m128 s2v2 = FUNC2(v2->m, v2->m, FUNC0(3, 0, 2, 1));
	dst->m = FUNC3(FUNC1(s1v1, s1v2), FUNC1(s2v1, s2v2));
}