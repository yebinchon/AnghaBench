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
 int /*<<< orphan*/  FUNC0 (float,float,float,float) ; 

__attribute__((used)) static inline void FUNC1(struct vec3 *dst, float x, float y, float z)
{
	dst->m = FUNC0(0.0f, z, y, x);
}