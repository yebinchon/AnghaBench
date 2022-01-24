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
struct program_param {int obj; struct gs_shader_param* param; } ;
struct gs_shader_param {int /*<<< orphan*/  name; } ;
struct gs_program {int /*<<< orphan*/  params; int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct program_param*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static bool FUNC3(struct gs_program *program,
				 struct gs_shader_param *param)
{
	struct program_param info;

	info.obj = FUNC1(program->obj, param->name);
	if (!FUNC2("glGetUniformLocation"))
		return false;

	if (info.obj == -1) {
		return true;
	}

	info.param = param;
	FUNC0(program->params, &info);
	return true;
}