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
struct TYPE_3__ {struct wined3d_device* device; } ;
struct wined3d_texture {TYPE_2__* sub_resources; TYPE_1__ resource; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_device {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_bo_address {int /*<<< orphan*/  addr; scalar_t__ buffer_object; } ;
struct TYPE_4__ {unsigned int size; int /*<<< orphan*/  locations; } ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_PIXEL_PACK_BUFFER ; 
 int /*<<< orphan*/  GL_PIXEL_UNPACK_BUFFER ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct wined3d_context* FUNC2 (struct wined3d_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_texture*,unsigned int,struct wined3d_bo_address*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wined3d_texture*,unsigned int,struct wined3d_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC10(struct wined3d_texture *texture,
        unsigned int sub_resource_idx, struct wined3d_context *context, DWORD location)
{
    unsigned int size = texture->sub_resources[sub_resource_idx].size;
    struct wined3d_device *device = texture->resource.device;
    const struct wined3d_gl_info *gl_info;
    struct wined3d_bo_address dst, src;

    if (!FUNC9(texture, sub_resource_idx, context, location))
        return FALSE;

    FUNC8(texture, sub_resource_idx, &dst, location);
    FUNC8(texture, sub_resource_idx, &src,
            texture->sub_resources[sub_resource_idx].locations);

    if (dst.buffer_object)
    {
        context = FUNC2(device, NULL, 0);
        gl_info = context->gl_info;
        FUNC0(FUNC4(GL_PIXEL_UNPACK_BUFFER, dst.buffer_object));
        FUNC0(FUNC5(GL_PIXEL_UNPACK_BUFFER, 0, size, src.addr));
        FUNC0(FUNC4(GL_PIXEL_UNPACK_BUFFER, 0));
        FUNC1("PBO upload");
        FUNC3(context);
        return TRUE;
    }

    if (src.buffer_object)
    {
        context = FUNC2(device, NULL, 0);
        gl_info = context->gl_info;
        FUNC0(FUNC4(GL_PIXEL_PACK_BUFFER, src.buffer_object));
        FUNC0(FUNC6(GL_PIXEL_PACK_BUFFER, 0, size, dst.addr));
        FUNC0(FUNC4(GL_PIXEL_PACK_BUFFER, 0));
        FUNC1("PBO download");
        FUNC3(context);
        return TRUE;
    }

    FUNC7(dst.addr, src.addr, size);
    return TRUE;
}