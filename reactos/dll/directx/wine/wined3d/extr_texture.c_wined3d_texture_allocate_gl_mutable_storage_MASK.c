#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int format_flags; } ;
struct wined3d_texture {unsigned int level_count; scalar_t__ target; int layer_count; TYPE_1__ resource; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* p_glTexImage2D ) (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_8__ {TYPE_3__ gl; } ;
struct wined3d_gl_info {TYPE_4__ gl_ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  denominator; int /*<<< orphan*/  numerator; } ;
struct wined3d_format {int /*<<< orphan*/  glType; int /*<<< orphan*/  glFormat; TYPE_2__ height_scale; } ;
typedef  int /*<<< orphan*/  GLsizei ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GL_TEXTURE_2D_ARRAY ; 
 int /*<<< orphan*/  FUNC1 (char*,struct wined3d_texture*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int WINED3DFMT_FLAG_HEIGHT_SCALE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_texture*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_texture*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_texture*,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct wined3d_texture *texture,
        GLenum gl_internal_format, const struct wined3d_format *format,
        const struct wined3d_gl_info *gl_info)
{
    unsigned int level, level_count, layer, layer_count;
    GLsizei width, height;
    GLenum target;

    level_count = texture->level_count;
    layer_count = texture->target == GL_TEXTURE_2D_ARRAY ? 1 : texture->layer_count;

    for (layer = 0; layer < layer_count; ++layer)
    {
        target = FUNC7(texture, layer * level_count);

        for (level = 0; level < level_count; ++level)
        {
            width = FUNC6(texture, level);
            height = FUNC5(texture, level);
            if (texture->resource.format_flags & WINED3DFMT_FLAG_HEIGHT_SCALE)
            {
                height *= format->height_scale.numerator;
                height /= format->height_scale.denominator;
            }

            FUNC1("texture %p, layer %u, level %u, target %#x, width %u, height %u.\n",
                    texture, layer, level, target, width, height);

            if (texture->target == GL_TEXTURE_2D_ARRAY)
            {
                FUNC0(FUNC3(target, level, gl_internal_format, width, height,
                        texture->layer_count, 0, format->glFormat, format->glType, NULL));
                FUNC2("glTexImage3D");
            }
            else
            {
                gl_info->gl_ops.gl.p_glTexImage2D(target, level, gl_internal_format,
                        width, height, 0, format->glFormat, format->glType, NULL);
                FUNC2("glTexImage2D");
            }
        }
    }
}