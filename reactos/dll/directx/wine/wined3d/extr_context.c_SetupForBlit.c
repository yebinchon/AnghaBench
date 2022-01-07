
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int (* p_glDisable ) (int ) ;int (* p_glColorMask ) (int ,int ,int ,int ) ;int (* p_glLoadIdentity ) () ;int (* p_glMatrixMode ) (int ) ;int (* p_glTexEnvf ) (int ,int ,float) ;int (* p_glTexEnvi ) (int ,int ,int ) ;} ;
struct TYPE_10__ {TYPE_3__ gl; } ;
struct TYPE_8__ {int textures; } ;
struct wined3d_gl_info {scalar_t__* supported; TYPE_4__ gl_ops; TYPE_2__ limits; } ;
struct wined3d_device {int shader_priv; TYPE_1__* shader_backend; } ;
struct wined3d_context {scalar_t__ blit_w; scalar_t__ blit_h; scalar_t__* rev_tex_unit_map; void* last_was_rhw; void* last_was_blit; struct wined3d_gl_info* gl_info; } ;
struct TYPE_11__ {scalar_t__ cx; scalar_t__ cy; } ;
struct TYPE_7__ {int (* shader_disable ) (int ,struct wined3d_context*) ;} ;
typedef TYPE_5__ SIZE ;
typedef scalar_t__ DWORD ;


 size_t ARB_CLIP_CONTROL ;
 size_t ARB_POINT_SPRITE ;
 size_t ARB_SAMPLER_OBJECTS ;
 size_t ARB_TEXTURE_CUBE_MAP ;
 size_t ARB_TEXTURE_RECTANGLE ;
 size_t EXT_SECONDARY_COLOR ;
 size_t EXT_TEXTURE_LOD_BIAS ;
 int GL_ALPHA_TEST ;
 int GL_BLEND ;
 int GL_COLOR_SUM_EXT ;
 int GL_CULL_FACE ;
 int GL_DEPTH_TEST ;
 int GL_EXTCALL (int ) ;
 int GL_FOG ;
 int GL_LIGHTING ;
 int GL_LOWER_LEFT ;
 int GL_MODELVIEW ;
 int GL_NEGATIVE_ONE_TO_ONE ;
 int GL_POINT_SPRITE_ARB ;
 int GL_REPLACE ;
 int GL_SCISSOR_TEST ;
 int GL_STENCIL_TEST ;
 int GL_TEXTURE ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_3D ;
 int GL_TEXTURE_CUBE_MAP_ARB ;
 int GL_TEXTURE_ENV ;
 int GL_TEXTURE_ENV_MODE ;
 int GL_TEXTURE_FILTER_CONTROL_EXT ;
 int GL_TEXTURE_LOD_BIAS_EXT ;
 int GL_TEXTURE_RECTANGLE_ARB ;
 int GL_TRUE ;
 int MAX_RENDER_TARGETS ;
 scalar_t__ MAX_TEXTURES ;
 int STATE_RENDER (int ) ;
 int STATE_SAMPLER (scalar_t__) ;
 int STATE_TEXTURESTAGE (scalar_t__,int ) ;
 int STATE_TRANSFORM (scalar_t__) ;
 int STATE_VDECL ;
 int STATE_VIEWPORT ;
 int TRACE (char*,...) ;
 void* TRUE ;
 size_t WINED3D_GL_LEGACY_CONTEXT ;
 int WINED3D_RS_ALPHABLENDENABLE ;
 int WINED3D_RS_ALPHATESTENABLE ;
 int WINED3D_RS_CLIPPING ;
 int WINED3D_RS_COLORWRITE (int) ;
 int WINED3D_RS_CULLMODE ;
 int WINED3D_RS_FOGENABLE ;
 int WINED3D_RS_LIGHTING ;
 int WINED3D_RS_POINTSPRITEENABLE ;
 int WINED3D_RS_SCISSORTESTENABLE ;
 int WINED3D_RS_SPECULARENABLE ;
 int WINED3D_RS_STENCILENABLE ;
 int WINED3D_RS_ZENABLE ;
 int WINED3D_TSS_COLOR_OP ;
 scalar_t__ WINED3D_TS_PROJECTION ;
 scalar_t__ WINED3D_TS_TEXTURE0 ;
 scalar_t__ WINED3D_TS_WORLD_MATRIX (int ) ;
 scalar_t__ WINED3D_UNMAPPED_STAGE ;
 int checkGLcall (char*) ;
 int context_active_texture (struct wined3d_context*,struct wined3d_gl_info const*,int) ;
 int context_enable_clip_distances (struct wined3d_context*,int ) ;
 int context_get_rt_size (struct wined3d_context*,TYPE_5__*) ;
 int context_invalidate_state (struct wined3d_context*,int ) ;
 int glBindSampler (int ,int ) ;
 int glClipControl (int ,int ) ;
 int glDisableWINE (int ) ;
 int set_blit_dimension (struct wined3d_gl_info const*,scalar_t__,scalar_t__) ;
 int stub1 (int ) ;
 int stub10 (int ,int ,int ) ;
 int stub11 (int ) ;
 int stub12 () ;
 int stub13 (int ,int ,float) ;
 int stub14 (int ) ;
 int stub15 () ;
 int stub16 (int ) ;
 int stub17 (int ) ;
 int stub18 (int ) ;
 int stub19 (int ) ;
 int stub2 (int ) ;
 int stub20 (int ) ;
 int stub21 (int ) ;
 int stub22 (int ) ;
 int stub23 (int ) ;
 int stub24 (int ,int ,int ,int ) ;
 int stub25 (int ) ;
 int stub26 (int ,struct wined3d_context*) ;
 int stub3 (int ) ;
 int stub4 (int ) ;
 int stub5 (int ,int ,int ) ;
 int stub6 (int ) ;
 int stub7 (int ) ;
 int stub8 (int ) ;
 int stub9 (int ) ;

__attribute__((used)) static void SetupForBlit(const struct wined3d_device *device, struct wined3d_context *context)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    DWORD sampler;
    SIZE rt_size;
    int i;

    TRACE("Setting up context %p for blitting\n", context);

    context_get_rt_size(context, &rt_size);

    if (context->last_was_blit)
    {
        if (context->blit_w != rt_size.cx || context->blit_h != rt_size.cy)
        {
            set_blit_dimension(gl_info, rt_size.cx, rt_size.cy);
            context->blit_w = rt_size.cx;
            context->blit_h = rt_size.cy;


        }
        TRACE("Context is already set up for blitting, nothing to do\n");
        return;
    }
    context->last_was_blit = TRUE;

    if (gl_info->supported[WINED3D_GL_LEGACY_CONTEXT])
    {






        for (i = gl_info->limits.textures - 1; i > 0 ; --i)
        {
            sampler = context->rev_tex_unit_map[i];
            context_active_texture(context, gl_info, i);

            if (gl_info->supported[ARB_TEXTURE_CUBE_MAP])
            {
                gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_CUBE_MAP_ARB);
                checkGLcall("glDisable GL_TEXTURE_CUBE_MAP_ARB");
            }
            gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_3D);
            checkGLcall("glDisable GL_TEXTURE_3D");
            if (gl_info->supported[ARB_TEXTURE_RECTANGLE])
            {
                gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_RECTANGLE_ARB);
                checkGLcall("glDisable GL_TEXTURE_RECTANGLE_ARB");
            }
            gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_2D);
            checkGLcall("glDisable GL_TEXTURE_2D");

            gl_info->gl_ops.gl.p_glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);
            checkGLcall("glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);");

            if (sampler != WINED3D_UNMAPPED_STAGE)
            {
                if (sampler < MAX_TEXTURES)
                    context_invalidate_state(context, STATE_TEXTURESTAGE(sampler, WINED3D_TSS_COLOR_OP));
                context_invalidate_state(context, STATE_SAMPLER(sampler));
            }
        }

        context_active_texture(context, gl_info, 0);
        if (gl_info->supported[ARB_TEXTURE_CUBE_MAP])
        {
            gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_CUBE_MAP_ARB);
            checkGLcall("glDisable GL_TEXTURE_CUBE_MAP_ARB");
        }
        gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_3D);
        checkGLcall("glDisable GL_TEXTURE_3D");
        if (gl_info->supported[ARB_TEXTURE_RECTANGLE])
        {
            gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_RECTANGLE_ARB);
            checkGLcall("glDisable GL_TEXTURE_RECTANGLE_ARB");
        }
        gl_info->gl_ops.gl.p_glDisable(GL_TEXTURE_2D);
        checkGLcall("glDisable GL_TEXTURE_2D");

        gl_info->gl_ops.gl.p_glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

        gl_info->gl_ops.gl.p_glMatrixMode(GL_TEXTURE);
        checkGLcall("glMatrixMode(GL_TEXTURE)");
        gl_info->gl_ops.gl.p_glLoadIdentity();
        checkGLcall("glLoadIdentity()");

        if (gl_info->supported[EXT_TEXTURE_LOD_BIAS])
        {
            gl_info->gl_ops.gl.p_glTexEnvf(GL_TEXTURE_FILTER_CONTROL_EXT,
                    GL_TEXTURE_LOD_BIAS_EXT, 0.0f);
            checkGLcall("glTexEnvf GL_TEXTURE_LOD_BIAS_EXT ...");
        }


        gl_info->gl_ops.gl.p_glMatrixMode(GL_MODELVIEW);
        checkGLcall("glMatrixMode(GL_MODELVIEW)");
        gl_info->gl_ops.gl.p_glLoadIdentity();
        checkGLcall("glLoadIdentity()");
        context_invalidate_state(context, STATE_TRANSFORM(WINED3D_TS_WORLD_MATRIX(0)));


        gl_info->gl_ops.gl.p_glDisable(GL_ALPHA_TEST);
        checkGLcall("glDisable(GL_ALPHA_TEST)");
        context_invalidate_state(context, STATE_RENDER(WINED3D_RS_ALPHATESTENABLE));
        gl_info->gl_ops.gl.p_glDisable(GL_LIGHTING);
        checkGLcall("glDisable GL_LIGHTING");
        context_invalidate_state(context, STATE_RENDER(WINED3D_RS_LIGHTING));
        glDisableWINE(GL_FOG);
        checkGLcall("glDisable GL_FOG");
        context_invalidate_state(context, STATE_RENDER(WINED3D_RS_FOGENABLE));
    }

    if (gl_info->supported[ARB_SAMPLER_OBJECTS])
        GL_EXTCALL(glBindSampler(0, 0));
    context_active_texture(context, gl_info, 0);

    sampler = context->rev_tex_unit_map[0];
    if (sampler != WINED3D_UNMAPPED_STAGE)
    {
        if (sampler < MAX_TEXTURES)
        {
            context_invalidate_state(context, STATE_TRANSFORM(WINED3D_TS_TEXTURE0 + sampler));
            context_invalidate_state(context, STATE_TEXTURESTAGE(sampler, WINED3D_TSS_COLOR_OP));
        }
        context_invalidate_state(context, STATE_SAMPLER(sampler));
    }


    gl_info->gl_ops.gl.p_glDisable(GL_DEPTH_TEST);
    checkGLcall("glDisable GL_DEPTH_TEST");
    context_invalidate_state(context, STATE_RENDER(WINED3D_RS_ZENABLE));
    gl_info->gl_ops.gl.p_glDisable(GL_BLEND);
    checkGLcall("glDisable GL_BLEND");
    context_invalidate_state(context, STATE_RENDER(WINED3D_RS_ALPHABLENDENABLE));
    gl_info->gl_ops.gl.p_glDisable(GL_CULL_FACE);
    checkGLcall("glDisable GL_CULL_FACE");
    context_invalidate_state(context, STATE_RENDER(WINED3D_RS_CULLMODE));
    gl_info->gl_ops.gl.p_glDisable(GL_STENCIL_TEST);
    checkGLcall("glDisable GL_STENCIL_TEST");
    context_invalidate_state(context, STATE_RENDER(WINED3D_RS_STENCILENABLE));
    gl_info->gl_ops.gl.p_glDisable(GL_SCISSOR_TEST);
    checkGLcall("glDisable GL_SCISSOR_TEST");
    context_invalidate_state(context, STATE_RENDER(WINED3D_RS_SCISSORTESTENABLE));
    if (gl_info->supported[ARB_POINT_SPRITE])
    {
        gl_info->gl_ops.gl.p_glDisable(GL_POINT_SPRITE_ARB);
        checkGLcall("glDisable GL_POINT_SPRITE_ARB");
        context_invalidate_state(context, STATE_RENDER(WINED3D_RS_POINTSPRITEENABLE));
    }
    gl_info->gl_ops.gl.p_glColorMask(GL_TRUE, GL_TRUE,GL_TRUE,GL_TRUE);
    checkGLcall("glColorMask");
    for (i = 0; i < MAX_RENDER_TARGETS; ++i)
        context_invalidate_state(context, STATE_RENDER(WINED3D_RS_COLORWRITE(i)));
    if (gl_info->supported[EXT_SECONDARY_COLOR])
    {
        gl_info->gl_ops.gl.p_glDisable(GL_COLOR_SUM_EXT);
        context_invalidate_state(context, STATE_RENDER(WINED3D_RS_SPECULARENABLE));
        checkGLcall("glDisable(GL_COLOR_SUM_EXT)");
    }

    context->last_was_rhw = TRUE;
    context_invalidate_state(context, STATE_VDECL);

    context_enable_clip_distances(context, 0);
    context_invalidate_state(context, STATE_RENDER(WINED3D_RS_CLIPPING));


    if (gl_info->supported[ARB_CLIP_CONTROL])
        GL_EXTCALL(glClipControl(GL_LOWER_LEFT, GL_NEGATIVE_ONE_TO_ONE));

    set_blit_dimension(gl_info, rt_size.cx, rt_size.cy);


    device->shader_backend->shader_disable(device->shader_priv, context);

    context->blit_w = rt_size.cx;
    context->blit_h = rt_size.cy;
    context_invalidate_state(context, STATE_VIEWPORT);
    context_invalidate_state(context, STATE_TRANSFORM(WINED3D_TS_PROJECTION));
}
