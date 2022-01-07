
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_gl_info {int * formats; } ;
struct wined3d_caps_gl_ctx {int dummy; } ;
struct TYPE_2__ {int vendor; } ;
struct wined3d_adapter {int d3d_info; TYPE_1__ driver_info; struct wined3d_gl_info gl_info; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int apply_format_fixups (struct wined3d_adapter*,struct wined3d_gl_info*) ;
 int heap_free (int *) ;
 int init_format_base_info (struct wined3d_gl_info*) ;
 int init_format_block_info (struct wined3d_gl_info*) ;
 int init_format_depth_bias_scale (struct wined3d_caps_gl_ctx*,int *) ;
 int init_format_fbo_compat_info (struct wined3d_caps_gl_ctx*) ;
 int init_format_filter_info (struct wined3d_gl_info*,int ) ;
 int init_format_gen_mipmap_info (struct wined3d_gl_info*) ;
 int init_format_texture_info (struct wined3d_adapter*,struct wined3d_gl_info*) ;
 int init_format_vertex_info (struct wined3d_gl_info*) ;
 int init_typeless_formats (struct wined3d_gl_info*) ;

BOOL wined3d_adapter_init_format_info(struct wined3d_adapter *adapter, struct wined3d_caps_gl_ctx *ctx)
{
    struct wined3d_gl_info *gl_info = &adapter->gl_info;

    if (!init_format_base_info(gl_info)) return FALSE;
    if (!init_format_block_info(gl_info)) goto fail;

    if (!ctx)
        return TRUE;

    if (!init_format_texture_info(adapter, gl_info)) goto fail;
    if (!init_format_vertex_info(gl_info)) goto fail;

    apply_format_fixups(adapter, gl_info);
    init_format_fbo_compat_info(ctx);
    init_format_filter_info(gl_info, adapter->driver_info.vendor);
    if (!init_typeless_formats(gl_info)) goto fail;
    init_format_gen_mipmap_info(gl_info);
    init_format_depth_bias_scale(ctx, &adapter->d3d_info);

    return TRUE;

fail:
    heap_free(gl_info->formats);
    gl_info->formats = ((void*)0);
    return FALSE;
}
