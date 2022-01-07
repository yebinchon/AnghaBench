
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int map_binding; struct wined3d_device* device; struct wined3d_format* format; } ;
struct wined3d_texture {unsigned int level_count; TYPE_3__* sub_resources; TYPE_1__ resource; } ;
struct wined3d_resource_desc {int usage; int access; int depth; int height; int width; scalar_t__ size; scalar_t__ multisample_quality; int multisample_type; int format; int resource_type; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_format {int* flags; int id; scalar_t__ conv_byte_count; int color_fixup; } ;
struct wined3d_device {scalar_t__ d3d_initialized; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_bo_address {int dummy; } ;
struct d3dfmt_converter_desc {int (* convert ) (int const*,int *,unsigned int,unsigned int,int ,int ) ;} ;
struct TYPE_12__ {int member_1; int member_0; } ;
struct TYPE_11__ {int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_9__ {int surface; } ;
struct TYPE_10__ {TYPE_2__ u; int size; } ;
typedef TYPE_4__ RECT ;
typedef TYPE_5__ POINT ;
typedef int DWORD ;
typedef int BYTE ;


 int ERR (char*,...) ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int FIXME (char*,int ,int ) ;
 int GL_PIXEL_UNPACK_BUFFER ;
 int TRACE (char*) ;
 int WINED3DFMT_FLAG_COMPRESSED ;
 int WINED3DUSAGE_PRIVATE ;
 int WINED3DUSAGE_SCRATCH ;
 size_t WINED3D_GL_RES_TYPE_TEX_2D ;
 int WINED3D_LOCATION_TEXTURE_RGB ;
 int WINED3D_MAP_READ ;
 int WINED3D_MAP_WRITE ;
 int WINED3D_MULTISAMPLE_NONE ;
 int WINED3D_RESOURCE_ACCESS_CPU ;
 int WINED3D_RESOURCE_ACCESS_MAP_R ;
 int WINED3D_RESOURCE_ACCESS_MAP_W ;
 int WINED3D_RTYPE_TEXTURE_2D ;
 int WINED3D_TEXTURE_CREATE_DISCARD ;
 int WINED3D_TEXTURE_CREATE_MAPPABLE ;
 struct wined3d_context* context_acquire (struct wined3d_device*,int *,int ) ;
 void* context_map_bo_address (struct wined3d_context*,struct wined3d_bo_address*,int ,int ,int ) ;
 int context_release (struct wined3d_context*) ;
 int context_unmap_bo_address (struct wined3d_context*,struct wined3d_bo_address*,int ) ;
 int debug_d3dformat (int ) ;
 struct d3dfmt_converter_desc* find_converter (int ,int ) ;
 int is_identity_fixup (int ) ;
 int stub1 (int const*,int *,unsigned int,unsigned int,int ,int ) ;
 int wined3d_const_bo_address (struct wined3d_bo_address*) ;
 int wined3d_debug_location (int ) ;
 int wined3d_null_parent_ops ;
 int wined3d_surface_upload_data (int ,struct wined3d_gl_info const*,struct wined3d_format const*,TYPE_4__*,unsigned int,TYPE_5__*,int ,int ) ;
 int wined3d_texture_bind_and_dirtify (struct wined3d_texture*,struct wined3d_context*,int ) ;
 int wined3d_texture_create (struct wined3d_device*,struct wined3d_resource_desc*,int,int,int,int *,int *,int *,struct wined3d_texture**) ;
 int wined3d_texture_get_level_height (struct wined3d_texture*,unsigned int) ;
 int wined3d_texture_get_level_width (struct wined3d_texture*,unsigned int) ;
 int wined3d_texture_get_memory (struct wined3d_texture*,unsigned int,struct wined3d_bo_address*,int ) ;
 int wined3d_texture_get_pitch (struct wined3d_texture*,unsigned int,unsigned int*,unsigned int*) ;
 int wined3d_texture_invalidate_location (struct wined3d_texture*,int ,int ) ;
 int wined3d_texture_load_location (struct wined3d_texture*,unsigned int,struct wined3d_context*,int ) ;
 int wined3d_texture_prepare_texture (struct wined3d_texture*,struct wined3d_context*,int ) ;
 int wined3d_texture_validate_location (struct wined3d_texture*,int ,int ) ;

__attribute__((used)) static struct wined3d_texture *surface_convert_format(struct wined3d_texture *src_texture,
        unsigned int sub_resource_idx, const struct wined3d_format *dst_format)
{
    unsigned int texture_level = sub_resource_idx % src_texture->level_count;
    const struct wined3d_format *src_format = src_texture->resource.format;
    struct wined3d_device *device = src_texture->resource.device;
    const struct d3dfmt_converter_desc *conv = ((void*)0);
    const struct wined3d_gl_info *gl_info = ((void*)0);
    unsigned int src_row_pitch, src_slice_pitch;
    struct wined3d_context *context = ((void*)0);
    struct wined3d_texture *dst_texture;
    struct wined3d_bo_address src_data;
    struct wined3d_resource_desc desc;
    DWORD map_binding;

    if (!(conv = find_converter(src_format->id, dst_format->id)) && (!device->d3d_initialized
            || !is_identity_fixup(src_format->color_fixup) || src_format->conv_byte_count
            || !is_identity_fixup(dst_format->color_fixup) || dst_format->conv_byte_count
            || (src_format->flags[WINED3D_GL_RES_TYPE_TEX_2D] & WINED3DFMT_FLAG_COMPRESSED)))
    {
        FIXME("Cannot find a conversion function from format %s to %s.\n",
                debug_d3dformat(src_format->id), debug_d3dformat(dst_format->id));
        return ((void*)0);
    }


    desc.resource_type = WINED3D_RTYPE_TEXTURE_2D;
    desc.format = dst_format->id;
    desc.multisample_type = WINED3D_MULTISAMPLE_NONE;
    desc.multisample_quality = 0;
    desc.usage = WINED3DUSAGE_SCRATCH | WINED3DUSAGE_PRIVATE;
    desc.access = WINED3D_RESOURCE_ACCESS_CPU | WINED3D_RESOURCE_ACCESS_MAP_R | WINED3D_RESOURCE_ACCESS_MAP_W;
    desc.width = wined3d_texture_get_level_width(src_texture, texture_level);
    desc.height = wined3d_texture_get_level_height(src_texture, texture_level);
    desc.depth = 1;
    desc.size = 0;
    if (FAILED(wined3d_texture_create(device, &desc, 1, 1,
            WINED3D_TEXTURE_CREATE_MAPPABLE | WINED3D_TEXTURE_CREATE_DISCARD,
            ((void*)0), ((void*)0), &wined3d_null_parent_ops, &dst_texture)))
    {
        ERR("Failed to create a destination texture for conversion.\n");
        return ((void*)0);
    }

    if (device->d3d_initialized)
    {
        context = context_acquire(device, ((void*)0), 0);
        gl_info = context->gl_info;
    }

    map_binding = src_texture->resource.map_binding;
    if (!wined3d_texture_load_location(src_texture, sub_resource_idx, context, map_binding))
        ERR("Failed to load the source sub-resource into %s.\n", wined3d_debug_location(map_binding));
    wined3d_texture_get_pitch(src_texture, texture_level, &src_row_pitch, &src_slice_pitch);
    wined3d_texture_get_memory(src_texture, sub_resource_idx, &src_data, map_binding);

    if (conv)
    {
        unsigned int dst_row_pitch, dst_slice_pitch;
        struct wined3d_bo_address dst_data;
        const BYTE *src;
        BYTE *dst;

        map_binding = dst_texture->resource.map_binding;
        if (!wined3d_texture_load_location(dst_texture, 0, context, map_binding))
            ERR("Failed to load the destination sub-resource into %s.\n", wined3d_debug_location(map_binding));
        wined3d_texture_get_pitch(dst_texture, 0, &dst_row_pitch, &dst_slice_pitch);
        wined3d_texture_get_memory(dst_texture, 0, &dst_data, map_binding);

        src = context_map_bo_address(context, &src_data,
                src_texture->sub_resources[sub_resource_idx].size, GL_PIXEL_UNPACK_BUFFER, WINED3D_MAP_READ);
        dst = context_map_bo_address(context,
                &dst_data, dst_texture->sub_resources[0].size, GL_PIXEL_UNPACK_BUFFER, WINED3D_MAP_WRITE);

        conv->convert(src, dst, src_row_pitch, dst_row_pitch, desc.width, desc.height);

        wined3d_texture_invalidate_location(dst_texture, 0, ~map_binding);
        context_unmap_bo_address(context, &dst_data, GL_PIXEL_UNPACK_BUFFER);
        context_unmap_bo_address(context, &src_data, GL_PIXEL_UNPACK_BUFFER);
    }
    else
    {
        RECT src_rect = {0, 0, desc.width, desc.height};
        POINT dst_point = {0, 0};

        TRACE("Using upload conversion.\n");

        wined3d_texture_prepare_texture(dst_texture, context, FALSE);
        wined3d_texture_bind_and_dirtify(dst_texture, context, FALSE);
        wined3d_surface_upload_data(dst_texture->sub_resources[0].u.surface, gl_info, src_format,
                &src_rect, src_row_pitch, &dst_point, FALSE, wined3d_const_bo_address(&src_data));

        wined3d_texture_validate_location(dst_texture, 0, WINED3D_LOCATION_TEXTURE_RGB);
        wined3d_texture_invalidate_location(dst_texture, 0, ~WINED3D_LOCATION_TEXTURE_RGB);
    }

    if (context)
        context_release(context);

    return dst_texture;
}
