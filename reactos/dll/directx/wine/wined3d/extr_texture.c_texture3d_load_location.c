
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_texture_sub_resource {int locations; TYPE_2__* buffer; int buffer_object; int offset; } ;
struct TYPE_3__ {int * heap_memory; } ;
struct wined3d_texture {int download_count; TYPE_1__ resource; struct wined3d_texture_sub_resource* sub_resources; } ;
struct wined3d_context {int dummy; } ;
struct wined3d_const_bo_address {int * member_1; int member_0; int addr; } ;
struct wined3d_bo_address {int * member_1; int member_0; int addr; } ;
struct TYPE_4__ {int name; } ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int FIXME (char*,int ,...) ;
 int TRUE ;




 int texture3d_download_data (struct wined3d_texture*,unsigned int,struct wined3d_context*,struct wined3d_bo_address*) ;
 int texture3d_srgb_transfer (struct wined3d_texture*,unsigned int,struct wined3d_context*,int) ;
 int texture3d_upload_data (struct wined3d_texture*,unsigned int,struct wined3d_context*,int *,struct wined3d_const_bo_address*,unsigned int,unsigned int) ;
 int wined3d_debug_location (int) ;
 int wined3d_texture_bind_and_dirtify (struct wined3d_texture*,struct wined3d_context*,int) ;
 int wined3d_texture_get_pitch (struct wined3d_texture*,unsigned int,unsigned int*,unsigned int*) ;
 int wined3d_texture_prepare_location (struct wined3d_texture*,unsigned int,struct wined3d_context*,int) ;

__attribute__((used)) static BOOL texture3d_load_location(struct wined3d_texture *texture, unsigned int sub_resource_idx,
        struct wined3d_context *context, DWORD location)
{
    struct wined3d_texture_sub_resource *sub_resource = &texture->sub_resources[sub_resource_idx];
    unsigned int row_pitch, slice_pitch;

    if (!wined3d_texture_prepare_location(texture, sub_resource_idx, context, location))
        return FALSE;

    switch (location)
    {
        case 129:
        case 128:
            if (sub_resource->locations & 130)
            {
                struct wined3d_const_bo_address data = {0, texture->resource.heap_memory};
                data.addr += sub_resource->offset;
                wined3d_texture_bind_and_dirtify(texture, context,
                        location == 128);
                wined3d_texture_get_pitch(texture, sub_resource_idx, &row_pitch, &slice_pitch);
                texture3d_upload_data(texture, sub_resource_idx, context, ((void*)0), &data, row_pitch, slice_pitch);
            }
            else if (sub_resource->locations & 131)
            {

                struct wined3d_const_bo_address data = {sub_resource->buffer_object, ((void*)0)};



                wined3d_texture_bind_and_dirtify(texture, context,
                        location == 128);
                wined3d_texture_get_pitch(texture, sub_resource_idx, &row_pitch, &slice_pitch);
                texture3d_upload_data(texture, sub_resource_idx, context, ((void*)0), &data, row_pitch, slice_pitch);
            }
            else if (sub_resource->locations & 129)
            {
                texture3d_srgb_transfer(texture, sub_resource_idx, context, TRUE);
            }
            else if (sub_resource->locations & 128)
            {
                texture3d_srgb_transfer(texture, sub_resource_idx, context, FALSE);
            }
            else
            {
                FIXME("Implement texture loading from %s.\n", wined3d_debug_location(sub_resource->locations));
                return FALSE;
            }
            break;

        case 130:
            if (sub_resource->locations & (129 | 128))
            {
                struct wined3d_bo_address data = {0, texture->resource.heap_memory};

                data.addr += sub_resource->offset;
                if (sub_resource->locations & 129)
                    wined3d_texture_bind_and_dirtify(texture, context, FALSE);
                else
                    wined3d_texture_bind_and_dirtify(texture, context, TRUE);

                texture3d_download_data(texture, sub_resource_idx, context, &data);
                ++texture->download_count;
            }
            else
            {
                FIXME("Implement WINED3D_LOCATION_SYSMEM loading from %s.\n",
                        wined3d_debug_location(sub_resource->locations));
                return FALSE;
            }
            break;

        case 131:
            if (sub_resource->locations & (129 | 128))
            {

                struct wined3d_bo_address data = {sub_resource->buffer_object, ((void*)0)};




                if (sub_resource->locations & 129)
                    wined3d_texture_bind_and_dirtify(texture, context, FALSE);
                else
                    wined3d_texture_bind_and_dirtify(texture, context, TRUE);

                texture3d_download_data(texture, sub_resource_idx, context, &data);
            }
            else
            {
                FIXME("Implement WINED3D_LOCATION_BUFFER loading from %s.\n",
                        wined3d_debug_location(sub_resource->locations));
                return FALSE;
            }
            break;

        default:
            FIXME("Implement %s loading from %s.\n", wined3d_debug_location(location),
                    wined3d_debug_location(sub_resource->locations));
            return FALSE;
    }

    return TRUE;
}
