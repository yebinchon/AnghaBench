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
struct TYPE_2__ {struct wined3d_format* format; } ;
struct wined3d_texture {unsigned int level_count; unsigned int layer_count; TYPE_1__ resource; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_format {int /*<<< orphan*/  glType; int /*<<< orphan*/  glFormat; int /*<<< orphan*/  glInternal; int /*<<< orphan*/  glGammaInternal; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_TEXTURE_3D ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_texture*,struct wined3d_context*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_texture*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_texture*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_texture*,unsigned int) ; 
 scalar_t__ FUNC8 (struct wined3d_texture*,struct wined3d_gl_info const*) ; 

__attribute__((used)) static void FUNC9(struct wined3d_texture *texture, struct wined3d_context *context, BOOL srgb)
{
    const struct wined3d_format *format = texture->resource.format;
    GLenum internal = srgb ? format->glGammaInternal : format->glInternal;
    unsigned int sub_count = texture->level_count * texture->layer_count;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    unsigned int i;

    FUNC4(texture, context, srgb);

    if (FUNC8(texture, gl_info))
    {
        FUNC0(FUNC3(GL_TEXTURE_3D, texture->level_count, internal,
                FUNC7(texture, 0),
                FUNC6(texture, 0),
                FUNC5(texture, 0)));
        FUNC1("glTexStorage3D");
    }
    else
    {
        for (i = 0; i < sub_count; ++i)
        {
            FUNC0(FUNC2(GL_TEXTURE_3D, i, internal,
                    FUNC7(texture, i),
                    FUNC6(texture, i),
                    FUNC5(texture, i),
                    0, format->glFormat, format->glType, NULL));
            FUNC1("glTexImage3D");
        }
    }
}