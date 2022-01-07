
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_state {int dummy; } ;
struct wined3d_gl_info {scalar_t__* supported; } ;
struct wined3d_context {unsigned int shader_update_mask; int constant_update_mask; struct wined3d_gl_info* gl_info; struct glsl_context_data* shader_backend_data; } ;
struct shader_glsl_priv {TYPE_2__* fragment_pipe; TYPE_1__* vertex_pipe; } ;
struct TYPE_6__ {scalar_t__ vertex_color_clamp; } ;
struct glsl_shader_prog_link {int constant_update_mask; int clip_distance_mask; scalar_t__ shader_controlled_clip_distances; TYPE_3__ vs; int id; } ;
struct glsl_context_data {scalar_t__ vertex_color_clamp; struct glsl_shader_prog_link* glsl_program; } ;
struct TYPE_5__ {int (* enable_extension ) (struct wined3d_gl_info const*,int) ;} ;
struct TYPE_4__ {int (* vp_enable ) (struct wined3d_gl_info const*,int) ;} ;
typedef int GLuint ;
typedef scalar_t__ GLenum ;


 size_t ARB_COLOR_BUFFER_FLOAT ;
 int FIXME (char*) ;
 int GL_CLAMP_VERTEX_COLOR_ARB ;
 int GL_EXTCALL (int ) ;
 scalar_t__ GL_FIXED_ONLY_ARB ;
 int TRACE (char*,int ) ;
 unsigned int WINED3D_SHADER_TYPE_COMPUTE ;
 int checkGLcall (char*) ;
 int context_enable_clip_distances (struct wined3d_context*,int ) ;
 int glClampColorARB (int ,scalar_t__) ;
 int glUseProgram (int ) ;
 int set_glsl_shader_program (struct wined3d_context*,struct wined3d_state const*,struct shader_glsl_priv*,struct glsl_context_data*) ;
 int stub1 (struct wined3d_gl_info const*,int) ;
 int stub2 (struct wined3d_gl_info const*,int) ;
 int use_ps (struct wined3d_state const*) ;
 int use_vs (struct wined3d_state const*) ;

__attribute__((used)) static void shader_glsl_select(void *shader_priv, struct wined3d_context *context,
        const struct wined3d_state *state)
{
    struct glsl_context_data *ctx_data = context->shader_backend_data;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct shader_glsl_priv *priv = shader_priv;
    struct glsl_shader_prog_link *glsl_program;
    GLenum current_vertex_color_clamp;
    GLuint program_id, prev_id;

    priv->vertex_pipe->vp_enable(gl_info, !use_vs(state));
    priv->fragment_pipe->enable_extension(gl_info, !use_ps(state));

    prev_id = ctx_data->glsl_program ? ctx_data->glsl_program->id : 0;
    set_glsl_shader_program(context, state, priv, ctx_data);
    glsl_program = ctx_data->glsl_program;

    if (glsl_program)
    {
        program_id = glsl_program->id;
        current_vertex_color_clamp = glsl_program->vs.vertex_color_clamp;
        if (glsl_program->shader_controlled_clip_distances)
            context_enable_clip_distances(context, glsl_program->clip_distance_mask);
    }
    else
    {
        program_id = 0;
        current_vertex_color_clamp = GL_FIXED_ONLY_ARB;
    }

    if (ctx_data->vertex_color_clamp != current_vertex_color_clamp)
    {
        ctx_data->vertex_color_clamp = current_vertex_color_clamp;
        if (gl_info->supported[ARB_COLOR_BUFFER_FLOAT])
        {
            GL_EXTCALL(glClampColorARB(GL_CLAMP_VERTEX_COLOR_ARB, current_vertex_color_clamp));
            checkGLcall("glClampColorARB");
        }
        else
        {
            FIXME("Vertex color clamp needs to be changed, but extension not supported.\n");
        }
    }

    TRACE("Using GLSL program %u.\n", program_id);

    if (prev_id != program_id)
    {
        GL_EXTCALL(glUseProgram(program_id));
        checkGLcall("glUseProgram");

        if (glsl_program)
            context->constant_update_mask |= glsl_program->constant_update_mask;
    }

    context->shader_update_mask |= (1u << WINED3D_SHADER_TYPE_COMPUTE);
}
