
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int usage; struct wined3d_format* format; } ;
struct wined3d_texture {TYPE_1__ resource; int flags; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_format {int glType; struct wined3d_context* glFormat; int id; struct wined3d_texture* glInternal; struct wined3d_texture* rtInternal; struct wined3d_texture* glGammaInternal; scalar_t__ conv_byte_count; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_color_key_conversion {int dst_format; } ;
typedef struct wined3d_texture* GLenum ;
typedef scalar_t__ BOOL ;


 int FIXME (char*,int ) ;
 int TRACE (char*,struct wined3d_texture*,...) ;
 int TRUE ;
 int WINED3DUSAGE_RENDERTARGET ;
 int WINED3D_TEXTURE_CONVERTED ;
 int debug_d3dformat (int ) ;
 struct wined3d_color_key_conversion* wined3d_format_get_color_key_conversion (struct wined3d_texture*,int ) ;
 struct wined3d_format* wined3d_get_format (struct wined3d_gl_info const*,int ,int) ;
 scalar_t__ wined3d_resource_is_offscreen (TYPE_1__*) ;
 int wined3d_texture_allocate_gl_immutable_storage (struct wined3d_texture*,struct wined3d_texture*,struct wined3d_gl_info const*) ;
 int wined3d_texture_allocate_gl_mutable_storage (struct wined3d_texture*,struct wined3d_texture*,struct wined3d_format const*,struct wined3d_gl_info const*) ;
 int wined3d_texture_bind_and_dirtify (struct wined3d_texture*,struct wined3d_context*,scalar_t__) ;
 scalar_t__ wined3d_texture_use_immutable_storage (struct wined3d_texture*,struct wined3d_gl_info const*) ;

__attribute__((used)) static void texture2d_prepare_texture(struct wined3d_texture *texture, struct wined3d_context *context, BOOL srgb)
{
    const struct wined3d_format *format = texture->resource.format;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    const struct wined3d_color_key_conversion *conversion;
    GLenum internal;

    TRACE("texture %p, context %p, format %s.\n", texture, context, debug_d3dformat(format->id));

    if (format->conv_byte_count)
    {
        texture->flags |= WINED3D_TEXTURE_CONVERTED;
    }
    else if ((conversion = wined3d_format_get_color_key_conversion(texture, TRUE)))
    {
        texture->flags |= WINED3D_TEXTURE_CONVERTED;
        format = wined3d_get_format(gl_info, conversion->dst_format, texture->resource.usage);
        TRACE("Using format %s for color key conversion.\n", debug_d3dformat(format->id));
    }

    wined3d_texture_bind_and_dirtify(texture, context, srgb);

    if (srgb)
        internal = format->glGammaInternal;
    else if (texture->resource.usage & WINED3DUSAGE_RENDERTARGET
            && wined3d_resource_is_offscreen(&texture->resource))
        internal = format->rtInternal;
    else
        internal = format->glInternal;

    if (!internal)
        FIXME("No GL internal format for format %s.\n", debug_d3dformat(format->id));

    TRACE("internal %#x, format %#x, type %#x.\n", internal, format->glFormat, format->glType);

    if (wined3d_texture_use_immutable_storage(texture, gl_info))
        wined3d_texture_allocate_gl_immutable_storage(texture, internal, gl_info);
    else
        wined3d_texture_allocate_gl_mutable_storage(texture, internal, format, gl_info);
}
