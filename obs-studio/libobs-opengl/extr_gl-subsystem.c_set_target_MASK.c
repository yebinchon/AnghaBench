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
struct fbo_info {int dummy; } ;
typedef  int /*<<< orphan*/  gs_zstencil_t ;
typedef  int /*<<< orphan*/  gs_texture_t ;
struct TYPE_4__ {int cur_render_side; int /*<<< orphan*/ * cur_zstencil_buffer; int /*<<< orphan*/ * cur_render_target; } ;
typedef  TYPE_1__ gs_device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fbo_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fbo_info*,int /*<<< orphan*/ *) ; 
 struct fbo_info* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,struct fbo_info*) ; 

__attribute__((used)) static bool FUNC4(gs_device_t *device, gs_texture_t *tex, int side,
		       gs_zstencil_t *zs)
{
	struct fbo_info *fbo;

	if (device->cur_render_target == tex &&
	    device->cur_zstencil_buffer == zs &&
	    device->cur_render_side == side)
		return true;

	device->cur_render_target = tex;
	device->cur_render_side = side;
	device->cur_zstencil_buffer = zs;

	if (!tex)
		return FUNC3(device, NULL);

	fbo = FUNC2(tex);
	if (!fbo)
		return false;

	FUNC3(device, fbo);

	if (!FUNC0(fbo, tex, side))
		return false;
	if (!FUNC1(fbo, zs))
		return false;

	return true;
}