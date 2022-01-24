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
struct quat {float x; float y; float z; int /*<<< orphan*/  w; } ;
struct axisang {float w; float x; float y; float z; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float) ; 
 float FUNC1 (float) ; 

void FUNC2(struct quat *dst, const struct axisang *aa)
{
	float halfa = aa->w * 0.5f;
	float sine = FUNC1(halfa);

	dst->x = aa->x * sine;
	dst->y = aa->y * sine;
	dst->z = aa->z * sine;
	dst->w = FUNC0(halfa);
}