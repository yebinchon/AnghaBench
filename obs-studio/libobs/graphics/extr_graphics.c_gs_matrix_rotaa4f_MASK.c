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
struct matrix4 {int dummy; } ;
struct axisang {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct axisang*,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct matrix4*,struct axisang*,struct matrix4*) ; 
 int /*<<< orphan*/  thread_graphics ; 
 struct matrix4* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(float x, float y, float z, float angle)
{
	struct matrix4 *top_mat;
	struct axisang aa;

	if (!FUNC1("gs_matrix_rotaa4f"))
		return;

	top_mat = FUNC3(thread_graphics);
	if (top_mat) {
		FUNC0(&aa, x, y, z, angle);
		FUNC2(top_mat, &aa, top_mat);
	}
}