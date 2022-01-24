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
struct gs_program {int /*<<< orphan*/  pixel_shader; int /*<<< orphan*/  vertex_shader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gs_program*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC1(struct gs_program *program)
{
	if (!FUNC0(program, program->vertex_shader))
		return false;
	if (!FUNC0(program, program->pixel_shader))
		return false;

	return true;
}