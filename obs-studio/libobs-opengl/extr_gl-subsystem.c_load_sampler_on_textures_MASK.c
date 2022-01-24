#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct gs_shader_param {scalar_t__ type; scalar_t__ sampler_id; scalar_t__ texture; scalar_t__ texture_id; } ;
struct TYPE_4__ {size_t num; struct gs_shader_param* array; } ;
struct gs_shader {TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  gs_samplerstate_t ;
struct TYPE_5__ {struct gs_shader* cur_pixel_shader; } ;
typedef  TYPE_2__ gs_device_t ;

/* Variables and functions */
 scalar_t__ GL_TEXTURE0 ; 
 scalar_t__ GS_SHADER_PARAM_TEXTURE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(gs_device_t *device, gs_samplerstate_t *ss,
				     int sampler_unit)
{
	struct gs_shader *shader = device->cur_pixel_shader;
	size_t i;

	for (i = 0; i < shader->params.num; i++) {
		struct gs_shader_param *param = shader->params.array + i;

		if (param->type == GS_SHADER_PARAM_TEXTURE &&
		    param->sampler_id == (uint32_t)sampler_unit &&
		    param->texture) {
			if (!FUNC0(GL_TEXTURE0 + param->texture_id))
				return false;
			if (!FUNC1(param->texture, ss))
				return false;
		}
	}

	return true;
}