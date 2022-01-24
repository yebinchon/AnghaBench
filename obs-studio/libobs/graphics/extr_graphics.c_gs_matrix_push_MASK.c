#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct matrix4 {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  cur_matrix; int /*<<< orphan*/  matrix_stack; } ;
typedef  TYPE_1__ graphics_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct matrix4*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct matrix4*,struct matrix4*,int) ; 
 TYPE_1__* thread_graphics ; 
 struct matrix4* FUNC3 (TYPE_1__*) ; 

void FUNC4(void)
{
	graphics_t *graphics = thread_graphics;

	if (!FUNC1("gs_matrix_push"))
		return;

	struct matrix4 mat, *top_mat = FUNC3(graphics);

	FUNC2(&mat, top_mat, sizeof(struct matrix4));
	FUNC0(graphics->matrix_stack, &mat);
	graphics->cur_matrix++;
}