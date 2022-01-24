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
struct gs_texture_2d {int /*<<< orphan*/  height; int /*<<< orphan*/  width; TYPE_1__ base; int /*<<< orphan*/  unpack_buffer; } ;
struct TYPE_6__ {int /*<<< orphan*/  gl_type; int /*<<< orphan*/  gl_format; int /*<<< orphan*/  gl_internal_format; } ;
typedef  TYPE_2__ gs_texture_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL_PIXEL_UNPACK_BUFFER ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 

void FUNC7(gs_texture_t *tex)
{
	struct gs_texture_2d *tex2d = (struct gs_texture_2d *)tex;
	if (!FUNC6(tex, "gs_texture_unmap"))
		goto failed;

	if (!FUNC3(GL_PIXEL_UNPACK_BUFFER, tex2d->unpack_buffer))
		goto failed;

	FUNC2(GL_PIXEL_UNPACK_BUFFER);
	if (!FUNC5("glUnmapBuffer"))
		goto failed;

	if (!FUNC4(GL_TEXTURE_2D, tex2d->base.texture))
		goto failed;

	FUNC1(GL_TEXTURE_2D, 0, tex->gl_internal_format, tex2d->width,
		     tex2d->height, 0, tex->gl_format, tex->gl_type, 0);
	if (!FUNC5("glTexImage2D"))
		goto failed;

	FUNC3(GL_PIXEL_UNPACK_BUFFER, 0);
	FUNC4(GL_TEXTURE_2D, 0);
	return;

failed:
	FUNC3(GL_PIXEL_UNPACK_BUFFER, 0);
	FUNC4(GL_TEXTURE_2D, 0);
	FUNC0(LOG_ERROR, "gs_texture_unmap (GL) failed");
}