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
struct gs_texture {scalar_t__ gl_target; int /*<<< orphan*/  texture; } ;
struct gs_shader_param {size_t sampler_id; struct gs_texture* texture; } ;
struct gs_sampler_state {int dummy; } ;
typedef  struct gs_texture gs_texture_t ;
struct TYPE_4__ {struct gs_sampler_state** cur_samplers; struct gs_texture** cur_textures; int /*<<< orphan*/  cur_pixel_shader; } ;
typedef  TYPE_1__ gs_device_t ;

/* Variables and functions */
 scalar_t__ GL_TEXTURE0 ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct gs_shader_param* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gs_texture*,struct gs_sampler_state*) ; 

void FUNC5(gs_device_t *device, gs_texture_t *tex, int unit)
{
	struct gs_shader_param *param;
	struct gs_sampler_state *sampler;
	struct gs_texture *cur_tex = device->cur_textures[unit];

	/* need a pixel shader to properly bind textures */
	if (!device->cur_pixel_shader)
		goto fail;

	if (cur_tex == tex)
		return;

	if (!FUNC2(GL_TEXTURE0 + unit))
		goto fail;

	/* the target for the previous text may not be the same as the
	 * next texture, so unbind the previous texture first to be safe */
	if (cur_tex && (!tex || cur_tex->gl_target != tex->gl_target))
		FUNC3(cur_tex->gl_target, 0);

	device->cur_textures[unit] = tex;
	param = FUNC1(device, unit);
	if (!param)
		return;

	param->texture = tex;

	if (!tex)
		return;

	// texelFetch doesn't need a sampler
	if (param->sampler_id != (size_t)-1)
		sampler = device->cur_samplers[param->sampler_id];
	else
		sampler = NULL;

	if (!FUNC3(tex->gl_target, tex->texture))
		goto fail;
	if (sampler && !FUNC4(tex, sampler))
		goto fail;

	return;

fail:
	FUNC0(LOG_ERROR, "device_load_texture (GL) failed");
}