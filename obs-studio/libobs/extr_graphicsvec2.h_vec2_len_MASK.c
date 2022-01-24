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
struct vec2 {int x; int y; } ;

/* Variables and functions */
 float FUNC0 (int) ; 

__attribute__((used)) static inline float FUNC1(const struct vec2 *v)
{
	return FUNC0(v->x * v->x + v->y * v->y);
}