
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ shader_version; } ;
struct wined3d_shader {TYPE_2__ reg_maps; struct wined3d_device* device; } ;
struct wined3d_device {int dummy; } ;
struct wined3d_context {int dummy; } ;


 scalar_t__ WINED3D_SHADER_TYPE_COMPUTE ;
 struct wined3d_context* context_acquire (struct wined3d_device*,int *,int ) ;
 int context_release (struct wined3d_context*) ;
 int shader_glsl_compile_compute_shader (void*,struct wined3d_context*,struct wined3d_shader*) ;

__attribute__((used)) static void shader_glsl_precompile(void *shader_priv, struct wined3d_shader *shader)
{
    struct wined3d_device *device = shader->device;
    struct wined3d_context *context;

    if (shader->reg_maps.shader_version.type == WINED3D_SHADER_TYPE_COMPUTE)
    {
        context = context_acquire(device, ((void*)0), 0);
        shader_glsl_compile_compute_shader(shader_priv, context, shader);
        context_release(context);
    }
}
