#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int layer_count; scalar_t__ layer_idx; int /*<<< orphan*/  level_count; scalar_t__ level_idx; } ;
struct TYPE_4__ {TYPE_1__ texture; } ;
struct wined3d_view_desc {TYPE_2__ u; scalar_t__ flags; int /*<<< orphan*/  format_id; } ;
struct wined3d_sub_resource_desc {int usage; int /*<<< orphan*/  format; } ;
struct wined3d_shader_resource_view {int dummy; } ;
struct d3d9_texture {struct wined3d_shader_resource_view* wined3d_srv; int /*<<< orphan*/  wined3d_texture; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int WINED3DUSAGE_LEGACY_CUBEMAP ; 
 int /*<<< orphan*/  d3d9_srv_wined3d_parent_ops ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_view_desc*,int /*<<< orphan*/ ,struct d3d9_texture*,int /*<<< orphan*/ *,struct wined3d_shader_resource_view**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wined3d_sub_resource_desc*) ; 

__attribute__((used)) static struct wined3d_shader_resource_view *FUNC6(struct d3d9_texture *texture)
{
    struct wined3d_sub_resource_desc sr_desc;
    struct wined3d_view_desc desc;
    HRESULT hr;

    if (texture->wined3d_srv)
        return texture->wined3d_srv;

    FUNC5(texture->wined3d_texture, 0, &sr_desc);
    desc.format_id = sr_desc.format;
    desc.flags = 0;
    desc.u.texture.level_idx = 0;
    desc.u.texture.level_count = FUNC3(texture->wined3d_texture);
    desc.u.texture.layer_idx = 0;
    desc.u.texture.layer_count = sr_desc.usage & WINED3DUSAGE_LEGACY_CUBEMAP ? 6 : 1;
    if (FUNC1(hr = FUNC2(&desc,
            FUNC4(texture->wined3d_texture), texture,
            &d3d9_srv_wined3d_parent_ops, &texture->wined3d_srv)))
    {
        FUNC0("Failed to create shader resource view, hr %#x.\n", hr);
        return NULL;
    }

    return texture->wined3d_srv;
}