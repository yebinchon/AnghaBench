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
struct TYPE_2__ {int usage; struct wined3d_format* format; } ;
struct wined3d_texture {TYPE_1__ resource; int /*<<< orphan*/  flags; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_format {int /*<<< orphan*/  glType; struct wined3d_context* glFormat; int /*<<< orphan*/  id; struct wined3d_texture* glInternal; struct wined3d_texture* rtInternal; struct wined3d_texture* glGammaInternal; scalar_t__ conv_byte_count; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_color_key_conversion {int /*<<< orphan*/  dst_format; } ;
typedef  struct wined3d_texture* GLenum ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct wined3d_texture*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int WINED3DUSAGE_RENDERTARGET ; 
 int /*<<< orphan*/  WINED3D_TEXTURE_CONVERTED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct wined3d_color_key_conversion* FUNC3 (struct wined3d_texture*,int /*<<< orphan*/ ) ; 
 struct wined3d_format* FUNC4 (struct wined3d_gl_info const*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_texture*,struct wined3d_texture*,struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_texture*,struct wined3d_texture*,struct wined3d_format const*,struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_texture*,struct wined3d_context*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct wined3d_texture*,struct wined3d_gl_info const*) ; 

__attribute__((used)) static void FUNC10(struct wined3d_texture *texture, struct wined3d_context *context, BOOL srgb)
{
    const struct wined3d_format *format = texture->resource.format;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    const struct wined3d_color_key_conversion *conversion;
    GLenum internal;

    FUNC1("texture %p, context %p, format %s.\n", texture, context, FUNC2(format->id));

    if (format->conv_byte_count)
    {
        texture->flags |= WINED3D_TEXTURE_CONVERTED;
    }
    else if ((conversion = FUNC3(texture, TRUE)))
    {
        texture->flags |= WINED3D_TEXTURE_CONVERTED;
        format = FUNC4(gl_info, conversion->dst_format, texture->resource.usage);
        FUNC1("Using format %s for color key conversion.\n", FUNC2(format->id));
    }

    FUNC8(texture, context, srgb);

    if (srgb)
        internal = format->glGammaInternal;
    else if (texture->resource.usage & WINED3DUSAGE_RENDERTARGET
            && FUNC5(&texture->resource))
        internal = format->rtInternal;
    else
        internal = format->glInternal;

    if (!internal)
        FUNC0("No GL internal format for format %s.\n", FUNC2(format->id));

    FUNC1("internal %#x, format %#x, type %#x.\n", internal, format->glFormat, format->glType);

    if (FUNC9(texture, gl_info))
        FUNC6(texture, internal, gl_info);
    else
        FUNC7(texture, internal, format, gl_info);
}