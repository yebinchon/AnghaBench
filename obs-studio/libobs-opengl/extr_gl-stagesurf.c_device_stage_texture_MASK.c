#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  texture; } ;
struct gs_texture_2d {TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  gs_texture_t ;
struct TYPE_6__ {int /*<<< orphan*/  gl_type; int /*<<< orphan*/  gl_format; int /*<<< orphan*/  pack_buffer; } ;
typedef  TYPE_2__ gs_stagesurf_t ;
typedef  int /*<<< orphan*/  gs_device_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL_PIXEL_PACK_BUFFER ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct gs_texture_2d*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(gs_device_t *device, gs_stagesurf_t *dst,
			  gs_texture_t *src)
{
	struct gs_texture_2d *tex2d = (struct gs_texture_2d *)src;
	if (!FUNC2(dst, tex2d))
		goto failed;

	if (!FUNC4(GL_PIXEL_PACK_BUFFER, dst->pack_buffer))
		goto failed;
	if (!FUNC5(GL_TEXTURE_2D, tex2d->base.texture))
		goto failed;

	FUNC3(GL_TEXTURE_2D, 0, dst->gl_format, dst->gl_type, 0);
	if (!FUNC6("glGetTexImage"))
		goto failed;

	FUNC5(GL_TEXTURE_2D, 0);
	FUNC4(GL_PIXEL_PACK_BUFFER, 0);
	return;

failed:
	FUNC4(GL_PIXEL_PACK_BUFFER, 0);
	FUNC5(GL_TEXTURE_2D, 0);
	FUNC1(LOG_ERROR, "device_stage_texture (GL) failed");

	FUNC0(device);
}