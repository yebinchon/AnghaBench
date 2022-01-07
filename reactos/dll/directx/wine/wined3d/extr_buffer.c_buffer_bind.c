
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_context {int dummy; } ;
struct wined3d_buffer {int buffer_object; int buffer_type_hint; } ;


 int context_bind_bo (struct wined3d_context*,int ,int ) ;

__attribute__((used)) static void buffer_bind(struct wined3d_buffer *buffer, struct wined3d_context *context)
{
    context_bind_bo(context, buffer->buffer_type_hint, buffer->buffer_object);
}
