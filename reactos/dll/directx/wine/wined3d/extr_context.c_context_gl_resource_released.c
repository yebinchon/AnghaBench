
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_device {int dummy; } ;
typedef int GLuint ;
typedef int BOOL ;


 int context_enum_fbo_entries (struct wined3d_device*,int ,int ,int ) ;
 int context_queue_fbo_entry_destruction ;

void context_gl_resource_released(struct wined3d_device *device,
        GLuint name, BOOL rb_namespace)
{
    context_enum_fbo_entries(device, name, rb_namespace, context_queue_fbo_entry_destruction);
}
