#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vec4 {int dummy; } ;
struct vec2 {int dummy; } ;
struct program_param {TYPE_2__* param; int /*<<< orphan*/  obj; } ;
struct matrix4 {int dummy; } ;
struct gs_program {TYPE_3__* device; } ;
struct TYPE_6__ {int /*<<< orphan*/ ** cur_samplers; } ;
struct TYPE_4__ {void* array; } ;
struct TYPE_5__ {scalar_t__ type; size_t sampler_id; int /*<<< orphan*/  texture_id; int /*<<< orphan*/  texture; int /*<<< orphan*/ * next_sampler; TYPE_1__ cur_value; } ;

/* Variables and functions */
 scalar_t__ GS_SHADER_PARAM_BOOL ; 
 scalar_t__ GS_SHADER_PARAM_FLOAT ; 
 scalar_t__ GS_SHADER_PARAM_INT ; 
 scalar_t__ GS_SHADER_PARAM_INT2 ; 
 scalar_t__ GS_SHADER_PARAM_INT3 ; 
 scalar_t__ GS_SHADER_PARAM_INT4 ; 
 scalar_t__ GS_SHADER_PARAM_MATRIX4X4 ; 
 scalar_t__ GS_SHADER_PARAM_TEXTURE ; 
 scalar_t__ GS_SHADER_PARAM_VEC2 ; 
 scalar_t__ GS_SHADER_PARAM_VEC3 ; 
 scalar_t__ GS_SHADER_PARAM_VEC4 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,float*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,float*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,float*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,float*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int,float*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (struct program_param*,int) ; 

__attribute__((used)) static void FUNC13(struct gs_program *program,
				   struct program_param *pp)
{
	void *array = pp->param->cur_value.array;

	if (pp->param->type == GS_SHADER_PARAM_BOOL ||
	    pp->param->type == GS_SHADER_PARAM_INT) {
		if (FUNC12(pp, sizeof(int))) {
			FUNC3(pp->obj, 1, (int *)array);
			FUNC11("glUniform1iv");
		}

	} else if (pp->param->type == GS_SHADER_PARAM_INT2) {
		if (FUNC12(pp, sizeof(int) * 2)) {
			FUNC5(pp->obj, 1, (int *)array);
			FUNC11("glUniform2iv");
		}

	} else if (pp->param->type == GS_SHADER_PARAM_INT3) {
		if (FUNC12(pp, sizeof(int) * 3)) {
			FUNC7(pp->obj, 1, (int *)array);
			FUNC11("glUniform3iv");
		}

	} else if (pp->param->type == GS_SHADER_PARAM_INT4) {
		if (FUNC12(pp, sizeof(int) * 4)) {
			FUNC9(pp->obj, 1, (int *)array);
			FUNC11("glUniform4iv");
		}

	} else if (pp->param->type == GS_SHADER_PARAM_FLOAT) {
		if (FUNC12(pp, sizeof(float))) {
			FUNC1(pp->obj, 1, (float *)array);
			FUNC11("glUniform1fv");
		}

	} else if (pp->param->type == GS_SHADER_PARAM_VEC2) {
		if (FUNC12(pp, sizeof(struct vec2))) {
			FUNC4(pp->obj, 1, (float *)array);
			FUNC11("glUniform2fv");
		}

	} else if (pp->param->type == GS_SHADER_PARAM_VEC3) {
		if (FUNC12(pp, sizeof(float) * 3)) {
			FUNC6(pp->obj, 1, (float *)array);
			FUNC11("glUniform3fv");
		}

	} else if (pp->param->type == GS_SHADER_PARAM_VEC4) {
		if (FUNC12(pp, sizeof(struct vec4))) {
			FUNC8(pp->obj, 1, (float *)array);
			FUNC11("glUniform4fv");
		}

	} else if (pp->param->type == GS_SHADER_PARAM_MATRIX4X4) {
		if (FUNC12(pp, sizeof(struct matrix4))) {
			FUNC10(pp->obj, 1, false, (float *)array);
			FUNC11("glUniformMatrix4fv");
		}

	} else if (pp->param->type == GS_SHADER_PARAM_TEXTURE) {
		if (pp->param->next_sampler) {
			program->device->cur_samplers[pp->param->sampler_id] =
				pp->param->next_sampler;
			pp->param->next_sampler = NULL;
		}

		FUNC2(pp->obj, pp->param->texture_id);
		FUNC0(program->device, pp->param->texture,
				    pp->param->texture_id);
	}
}