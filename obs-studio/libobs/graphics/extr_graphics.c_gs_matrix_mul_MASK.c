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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct matrix4*,struct matrix4 const*,struct matrix4*) ; 
 int /*<<< orphan*/  thread_graphics ; 
 struct matrix4* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(const struct matrix4 *matrix)
{
	struct matrix4 *top_mat;

	if (!FUNC0("gs_matrix_mul"))
		return;

	top_mat = FUNC2(thread_graphics);
	if (top_mat)
		FUNC1(top_mat, matrix, top_mat);
}