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
struct vec3 {float x; void* m; } ;
typedef  void* __m128 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 
 void* FUNC2 (void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 

__attribute__((used)) static inline float FUNC4(const struct vec3 *v1, const struct vec3 *v2)
{
	struct vec3 add;
	__m128 mul = FUNC2(v1->m, v2->m);
	add.m = FUNC0(FUNC1(mul, mul), mul);
	add.m = FUNC0(FUNC3(add.m, add.m, 0x55), add.m);
	return add.x;
}