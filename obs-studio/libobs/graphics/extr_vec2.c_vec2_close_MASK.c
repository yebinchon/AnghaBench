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
struct vec2 {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ; 

int FUNC1(const struct vec2 *v1, const struct vec2 *v2, float epsilon)
{
	return FUNC0(v1->x, v2->x, epsilon) &&
	       FUNC0(v1->y, v2->y, epsilon);
}