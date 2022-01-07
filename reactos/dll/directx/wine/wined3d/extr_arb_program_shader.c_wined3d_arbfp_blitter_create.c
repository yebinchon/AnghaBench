
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_gl_info {int * supported; } ;
struct wined3d_device {int * shader_backend; TYPE_1__* adapter; } ;
struct wined3d_blitter {struct wined3d_blitter* next; int * ops; } ;
struct wined3d_arbfp_blitter {struct wined3d_blitter blitter; scalar_t__ palette_texture; int shaders; } ;
struct TYPE_2__ {struct wined3d_gl_info gl_info; } ;


 size_t ARB_FRAGMENT_PROGRAM ;
 int ERR (char*) ;
 int TRACE (char*,struct wined3d_arbfp_blitter*) ;
 size_t WINED3D_GL_LEGACY_CONTEXT ;
 int arb_program_shader_backend ;
 int arbfp_blit_type_compare ;
 int arbfp_blitter_ops ;
 int glsl_shader_backend ;
 struct wined3d_arbfp_blitter* heap_alloc (int) ;
 int wine_rb_init (int *,int ) ;

void wined3d_arbfp_blitter_create(struct wined3d_blitter **next, const struct wined3d_device *device)
{
    const struct wined3d_gl_info *gl_info = &device->adapter->gl_info;
    struct wined3d_arbfp_blitter *blitter;

    if (device->shader_backend != &arb_program_shader_backend
            && device->shader_backend != &glsl_shader_backend)
        return;

    if (!gl_info->supported[ARB_FRAGMENT_PROGRAM])
        return;

    if (!gl_info->supported[WINED3D_GL_LEGACY_CONTEXT])
        return;

    if (!(blitter = heap_alloc(sizeof(*blitter))))
    {
        ERR("Failed to allocate blitter.\n");
        return;
    }

    TRACE("Created blitter %p.\n", blitter);

    blitter->blitter.ops = &arbfp_blitter_ops;
    blitter->blitter.next = *next;
    wine_rb_init(&blitter->shaders, arbfp_blit_type_compare);
    blitter->palette_texture = 0;
    *next = &blitter->blitter;
}
