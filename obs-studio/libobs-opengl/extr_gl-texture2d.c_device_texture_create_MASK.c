#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_2__ {int format; int levels; int is_dynamic; int is_render_target; int is_dummy; int gen_mipmaps; int /*<<< orphan*/  gl_internal_format; int /*<<< orphan*/  gl_format; int /*<<< orphan*/  gl_type; int /*<<< orphan*/  texture; int /*<<< orphan*/  gl_target; int /*<<< orphan*/  type; int /*<<< orphan*/ * device; } ;
struct gs_texture_2d {int width; int height; TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  gs_texture_t ;
typedef  int /*<<< orphan*/  gs_device_t ;
typedef  enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;

/* Variables and functions */
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_MAX_LEVEL ; 
 int GS_BUILD_MIPMAPS ; 
 int GS_DYNAMIC ; 
 int GS_GL_DUMMYTEX ; 
 int GS_RENDER_TARGET ; 
 int /*<<< orphan*/  GS_TEXTURE_2D ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct gs_texture_2d* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct gs_texture_2d*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct gs_texture_2d*,int /*<<< orphan*/  const**) ; 

gs_texture_t *FUNC14(gs_device_t *device, uint32_t width,
				    uint32_t height,
				    enum gs_color_format color_format,
				    uint32_t levels, const uint8_t **data,
				    uint32_t flags)
{
	struct gs_texture_2d *tex = FUNC1(sizeof(struct gs_texture_2d));
	tex->base.device = device;
	tex->base.type = GS_TEXTURE_2D;
	tex->base.format = color_format;
	tex->base.levels = levels;
	tex->base.gl_format = FUNC2(color_format);
	tex->base.gl_internal_format = FUNC3(color_format);
	tex->base.gl_type = FUNC5(color_format);
	tex->base.gl_target = GL_TEXTURE_2D;
	tex->base.is_dynamic = (flags & GS_DYNAMIC) != 0;
	tex->base.is_render_target = (flags & GS_RENDER_TARGET) != 0;
	tex->base.is_dummy = (flags & GS_GL_DUMMYTEX) != 0;
	tex->base.gen_mipmaps = (flags & GS_BUILD_MIPMAPS) != 0;
	tex->width = width;
	tex->height = height;

	if (!FUNC7(1, &tex->base.texture))
		goto fail;

	if (!tex->base.is_dummy) {
		if (tex->base.is_dynamic && !FUNC4(tex))
			goto fail;
		if (!FUNC13(tex, data))
			goto fail;
	} else {
		if (!FUNC6(GL_TEXTURE_2D, tex->base.texture))
			goto fail;

		uint32_t row_size =
			tex->width * FUNC10(tex->base.format);
		uint32_t tex_size = tex->height * row_size / 8;
		bool compressed = FUNC11(tex->base.format);
		bool did_init = FUNC8(GL_TEXTURE_2D, tex->base.gl_type,
					     1, tex->base.gl_format,
					     tex->base.gl_internal_format,
					     compressed, tex->width,
					     tex->height, tex_size, NULL);
		did_init =
			FUNC9(GL_TEXTURE_2D, GL_TEXTURE_MAX_LEVEL, 0);

		bool did_unbind = FUNC6(GL_TEXTURE_2D, 0);
		if (!did_init || !did_unbind)
			goto fail;
	}

	return (gs_texture_t *)tex;

fail:
	FUNC12((gs_texture_t *)tex);
	FUNC0(LOG_ERROR, "device_texture_create (GL) failed");
	return NULL;
}