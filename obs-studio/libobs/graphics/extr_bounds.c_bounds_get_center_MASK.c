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
struct bounds {int /*<<< orphan*/  min; int /*<<< orphan*/  max; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vec3*,struct vec3*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vec3*,struct vec3*,float) ; 
 int /*<<< orphan*/  FUNC2 (struct vec3*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(struct vec3 *dst, const struct bounds *b)
{
	FUNC2(dst, &b->max, &b->min);
	FUNC1(dst, dst, 0.5f);
	FUNC0(dst, dst, &b->min);
}