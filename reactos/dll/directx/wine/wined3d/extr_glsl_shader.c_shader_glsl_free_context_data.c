
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_context {int shader_backend_data; } ;


 int heap_free (int ) ;

__attribute__((used)) static void shader_glsl_free_context_data(struct wined3d_context *context)
{
    heap_free(context->shader_backend_data);
}
