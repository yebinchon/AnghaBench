
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {unsigned int format_count; struct wined3d_format* formats; } ;
struct wined3d_format {int* flags; unsigned int depth_bias_scale; unsigned int depth_size; int glInternal; int id; } ;
struct wined3d_d3d_info {int wined3d_creation_flags; } ;
struct wined3d_caps_gl_ctx {struct wined3d_gl_info* gl_info; } ;


 int TRACE (char*,int ) ;
 int WINED3DFMT_FLAG_DEPTH ;
 int WINED3DFMT_FLAG_FLOAT ;
 size_t WINED3D_GL_RES_TYPE_RB ;
 size_t WINED3D_GL_RES_TYPE_TEX_2D ;
 int WINED3D_NORMALIZED_DEPTH_BIAS ;
 int debug_d3dformat (int ) ;
 unsigned int wined3d_adapter_find_polyoffset_scale (struct wined3d_caps_gl_ctx*,int ) ;

__attribute__((used)) static void init_format_depth_bias_scale(struct wined3d_caps_gl_ctx *ctx,
        const struct wined3d_d3d_info *d3d_info)
{
    const struct wined3d_gl_info *gl_info = ctx->gl_info;
    unsigned int i;

    for (i = 0; i < gl_info->format_count; ++i)
    {
        struct wined3d_format *format = &gl_info->formats[i];

        if (format->flags[WINED3D_GL_RES_TYPE_RB] & WINED3DFMT_FLAG_DEPTH)
        {
            TRACE("Testing depth bias scale for format %s.\n", debug_d3dformat(format->id));
            format->depth_bias_scale = wined3d_adapter_find_polyoffset_scale(ctx, format->glInternal);

            if (!(d3d_info->wined3d_creation_flags & WINED3D_NORMALIZED_DEPTH_BIAS))
            {



                if (format->flags[WINED3D_GL_RES_TYPE_TEX_2D] & WINED3DFMT_FLAG_FLOAT)
                    format->depth_bias_scale /= 1u << 24;
                else
                    format->depth_bias_scale /= 1u << format->depth_size;
            }
        }
    }
}
