
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_vertex_pipe_ops {int (* vp_free ) (struct wined3d_device*) ;void* (* vp_alloc ) (int *,struct shader_glsl_priv*) ;} ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_device {struct shader_glsl_priv* shader_priv; void* fragment_priv; void* vertex_priv; TYPE_2__* wined3d; TYPE_1__* adapter; } ;
struct shader_glsl_priv {int next_constant_version; int ffp_proj_control; int legacy_lighting; int shader_buffer; struct shader_glsl_priv* stack; int vconst_heap; int pconst_heap; struct fragment_pipeline const* fragment_pipe; struct wined3d_vertex_pipe_ops const* vertex_pipe; int program_lookup; int string_buffers; } ;
struct fragment_pipeline {int (* free_private ) (struct wined3d_device*) ;int (* get_caps ) (struct wined3d_gl_info const*,struct fragment_caps*) ;void* (* alloc_private ) (int *,struct shader_glsl_priv*) ;} ;
struct fragment_caps {int wined3d_caps; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {struct wined3d_gl_info gl_info; } ;
typedef scalar_t__ SIZE_T ;
typedef int HRESULT ;


 int ERR (char*) ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int WINED3D_FRAGMENT_CAP_PROJ_CONTROL ;
 int WINED3D_LEGACY_FFP_LIGHTING ;
 int WINED3D_MAX_PS_CONSTS_F ;
 int WINED3D_MAX_VS_CONSTS_F ;
 int WINED3D_OK ;
 int constant_heap_free (int *) ;
 int constant_heap_init (int *,int ) ;
 int glsl_program_key_compare ;
 int glsl_shader_backend ;
 struct shader_glsl_priv* heap_alloc_zero (int) ;
 struct shader_glsl_priv* heap_calloc (scalar_t__,int) ;
 int heap_free (struct shader_glsl_priv*) ;
 int max (int ,int ) ;
 int string_buffer_free (int *) ;
 int string_buffer_init (int *) ;
 int string_buffer_list_init (int *) ;
 void* stub1 (int *,struct shader_glsl_priv*) ;
 void* stub2 (int *,struct shader_glsl_priv*) ;
 int stub3 (struct wined3d_device*) ;
 int stub4 (struct wined3d_gl_info const*,struct fragment_caps*) ;
 int stub5 (struct wined3d_device*) ;
 int stub6 (struct wined3d_device*) ;
 int wine_rb_init (int *,int ) ;
 scalar_t__ wined3d_log2i (int ) ;

__attribute__((used)) static HRESULT shader_glsl_alloc(struct wined3d_device *device, const struct wined3d_vertex_pipe_ops *vertex_pipe,
        const struct fragment_pipeline *fragment_pipe)
{
    SIZE_T stack_size = wined3d_log2i(max(WINED3D_MAX_VS_CONSTS_F, WINED3D_MAX_PS_CONSTS_F)) + 1;
    const struct wined3d_gl_info *gl_info = &device->adapter->gl_info;
    struct fragment_caps fragment_caps;
    void *vertex_priv, *fragment_priv;
    struct shader_glsl_priv *priv;

    if (!(priv = heap_alloc_zero(sizeof(*priv))))
        return E_OUTOFMEMORY;

    string_buffer_list_init(&priv->string_buffers);

    if (!(vertex_priv = vertex_pipe->vp_alloc(&glsl_shader_backend, priv)))
    {
        ERR("Failed to initialize vertex pipe.\n");
        heap_free(priv);
        return E_FAIL;
    }

    if (!(fragment_priv = fragment_pipe->alloc_private(&glsl_shader_backend, priv)))
    {
        ERR("Failed to initialize fragment pipe.\n");
        vertex_pipe->vp_free(device);
        heap_free(priv);
        return E_FAIL;
    }

    if (!string_buffer_init(&priv->shader_buffer))
    {
        ERR("Failed to initialize shader buffer.\n");
        goto fail;
    }

    if (!(priv->stack = heap_calloc(stack_size, sizeof(*priv->stack))))
    {
        ERR("Failed to allocate memory.\n");
        goto fail;
    }

    if (!constant_heap_init(&priv->vconst_heap, WINED3D_MAX_VS_CONSTS_F))
    {
        ERR("Failed to initialize vertex shader constant heap\n");
        goto fail;
    }

    if (!constant_heap_init(&priv->pconst_heap, WINED3D_MAX_PS_CONSTS_F))
    {
        ERR("Failed to initialize pixel shader constant heap\n");
        goto fail;
    }

    wine_rb_init(&priv->program_lookup, glsl_program_key_compare);

    priv->next_constant_version = 1;
    priv->vertex_pipe = vertex_pipe;
    priv->fragment_pipe = fragment_pipe;
    fragment_pipe->get_caps(gl_info, &fragment_caps);
    priv->ffp_proj_control = fragment_caps.wined3d_caps & WINED3D_FRAGMENT_CAP_PROJ_CONTROL;
    priv->legacy_lighting = device->wined3d->flags & WINED3D_LEGACY_FFP_LIGHTING;

    device->vertex_priv = vertex_priv;
    device->fragment_priv = fragment_priv;
    device->shader_priv = priv;

    return WINED3D_OK;

fail:
    constant_heap_free(&priv->pconst_heap);
    constant_heap_free(&priv->vconst_heap);
    heap_free(priv->stack);
    string_buffer_free(&priv->shader_buffer);
    fragment_pipe->free_private(device);
    vertex_pipe->vp_free(device);
    heap_free(priv);
    return E_OUTOFMEMORY;
}
