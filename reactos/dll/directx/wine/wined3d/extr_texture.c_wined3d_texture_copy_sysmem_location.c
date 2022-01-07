
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct wined3d_device* device; } ;
struct wined3d_texture {TYPE_2__* sub_resources; TYPE_1__ resource; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_device {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_bo_address {int addr; scalar_t__ buffer_object; } ;
struct TYPE_4__ {unsigned int size; int locations; } ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int GL_EXTCALL (int ) ;
 int GL_PIXEL_PACK_BUFFER ;
 int GL_PIXEL_UNPACK_BUFFER ;
 int TRUE ;
 int checkGLcall (char*) ;
 struct wined3d_context* context_acquire (struct wined3d_device*,int *,int ) ;
 int context_release (struct wined3d_context*) ;
 int glBindBuffer (int ,scalar_t__) ;
 int glBufferSubData (int ,int ,unsigned int,int ) ;
 int glGetBufferSubData (int ,int ,unsigned int,int ) ;
 int memcpy (int ,int ,unsigned int) ;
 int wined3d_texture_get_memory (struct wined3d_texture*,unsigned int,struct wined3d_bo_address*,int ) ;
 int wined3d_texture_prepare_location (struct wined3d_texture*,unsigned int,struct wined3d_context*,int ) ;

__attribute__((used)) static BOOL wined3d_texture_copy_sysmem_location(struct wined3d_texture *texture,
        unsigned int sub_resource_idx, struct wined3d_context *context, DWORD location)
{
    unsigned int size = texture->sub_resources[sub_resource_idx].size;
    struct wined3d_device *device = texture->resource.device;
    const struct wined3d_gl_info *gl_info;
    struct wined3d_bo_address dst, src;

    if (!wined3d_texture_prepare_location(texture, sub_resource_idx, context, location))
        return FALSE;

    wined3d_texture_get_memory(texture, sub_resource_idx, &dst, location);
    wined3d_texture_get_memory(texture, sub_resource_idx, &src,
            texture->sub_resources[sub_resource_idx].locations);

    if (dst.buffer_object)
    {
        context = context_acquire(device, ((void*)0), 0);
        gl_info = context->gl_info;
        GL_EXTCALL(glBindBuffer(GL_PIXEL_UNPACK_BUFFER, dst.buffer_object));
        GL_EXTCALL(glBufferSubData(GL_PIXEL_UNPACK_BUFFER, 0, size, src.addr));
        GL_EXTCALL(glBindBuffer(GL_PIXEL_UNPACK_BUFFER, 0));
        checkGLcall("PBO upload");
        context_release(context);
        return TRUE;
    }

    if (src.buffer_object)
    {
        context = context_acquire(device, ((void*)0), 0);
        gl_info = context->gl_info;
        GL_EXTCALL(glBindBuffer(GL_PIXEL_PACK_BUFFER, src.buffer_object));
        GL_EXTCALL(glGetBufferSubData(GL_PIXEL_PACK_BUFFER, 0, size, dst.addr));
        GL_EXTCALL(glBindBuffer(GL_PIXEL_PACK_BUFFER, 0));
        checkGLcall("PBO download");
        context_release(context);
        return TRUE;
    }

    memcpy(dst.addr, src.addr, size);
    return TRUE;
}
