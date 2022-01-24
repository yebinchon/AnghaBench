#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wined3d_texture_sub_resource {int dummy; } ;
struct wined3d_texture {unsigned int level_count; } ;
struct wined3d_resource {unsigned int format_flags; struct wined3d_format* format; } ;
struct wined3d_map_info {int row_pitch; int slice_pitch; int size; } ;
struct wined3d_format {int byte_count; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALIDARG ; 
 unsigned int WINED3DFMT_FLAG_BROKEN_PITCH ; 
 int /*<<< orphan*/  WINED3D_OK ; 
 struct wined3d_texture* FUNC0 (struct wined3d_resource*) ; 
 int FUNC1 (struct wined3d_texture*,unsigned int) ; 
 int FUNC2 (struct wined3d_texture*,unsigned int) ; 
 int FUNC3 (struct wined3d_texture*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_texture*,unsigned int,int*,int*) ; 
 struct wined3d_texture_sub_resource* FUNC5 (struct wined3d_texture*,unsigned int) ; 

__attribute__((used)) static HRESULT FUNC6(struct wined3d_resource *resource, unsigned int sub_resource_idx,
        struct wined3d_map_info *info, DWORD flags)
{
    const struct wined3d_format *format = resource->format;
    struct wined3d_texture_sub_resource *sub_resource;
    unsigned int fmt_flags = resource->format_flags;
    struct wined3d_texture *texture;
    unsigned int texture_level;

    texture = FUNC0(resource);
    if (!(sub_resource = FUNC5(texture, sub_resource_idx)))
        return E_INVALIDARG;

    texture_level = sub_resource_idx % texture->level_count;

    if (fmt_flags & WINED3DFMT_FLAG_BROKEN_PITCH)
    {
        info->row_pitch = FUNC3(texture, texture_level) * format->byte_count;
        info->slice_pitch = FUNC2(texture, texture_level) * info->row_pitch;
    }
    else
    {
        FUNC4(texture, texture_level, &info->row_pitch, &info->slice_pitch);
    }

    info->size = info->slice_pitch * FUNC1(texture, texture_level);

    return WINED3D_OK;
}