#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wined3d_vertex_pipe_ops {int /*<<< orphan*/  (* vp_free ) (struct wined3d_device*) ;void* (* vp_alloc ) (int /*<<< orphan*/ *,struct shader_glsl_priv*) ;} ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_device {struct shader_glsl_priv* shader_priv; void* fragment_priv; void* vertex_priv; TYPE_2__* wined3d; TYPE_1__* adapter; } ;
struct shader_glsl_priv {int next_constant_version; int ffp_proj_control; int legacy_lighting; int /*<<< orphan*/  shader_buffer; struct shader_glsl_priv* stack; int /*<<< orphan*/  vconst_heap; int /*<<< orphan*/  pconst_heap; struct fragment_pipeline const* fragment_pipe; struct wined3d_vertex_pipe_ops const* vertex_pipe; int /*<<< orphan*/  program_lookup; int /*<<< orphan*/  string_buffers; } ;
struct fragment_pipeline {int /*<<< orphan*/  (* free_private ) (struct wined3d_device*) ;int /*<<< orphan*/  (* get_caps ) (struct wined3d_gl_info const*,struct fragment_caps*) ;void* (* alloc_private ) (int /*<<< orphan*/ *,struct shader_glsl_priv*) ;} ;
struct fragment_caps {int wined3d_caps; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {struct wined3d_gl_info gl_info; } ;
typedef  scalar_t__ SIZE_T ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int WINED3D_FRAGMENT_CAP_PROJ_CONTROL ; 
 int WINED3D_LEGACY_FFP_LIGHTING ; 
 int /*<<< orphan*/  WINED3D_MAX_PS_CONSTS_F ; 
 int /*<<< orphan*/  WINED3D_MAX_VS_CONSTS_F ; 
 int /*<<< orphan*/  WINED3D_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  glsl_program_key_compare ; 
 int /*<<< orphan*/  glsl_shader_backend ; 
 struct shader_glsl_priv* FUNC3 (int) ; 
 struct shader_glsl_priv* FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct shader_glsl_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ *,struct shader_glsl_priv*) ; 
 void* FUNC11 (int /*<<< orphan*/ *,struct shader_glsl_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct wined3d_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct wined3d_gl_info const*,struct fragment_caps*) ; 
 int /*<<< orphan*/  FUNC14 (struct wined3d_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct wined3d_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC18(struct wined3d_device *device, const struct wined3d_vertex_pipe_ops *vertex_pipe,
        const struct fragment_pipeline *fragment_pipe)
{
    SIZE_T stack_size = FUNC17(FUNC6(WINED3D_MAX_VS_CONSTS_F, WINED3D_MAX_PS_CONSTS_F)) + 1;
    const struct wined3d_gl_info *gl_info = &device->adapter->gl_info;
    struct fragment_caps fragment_caps;
    void *vertex_priv, *fragment_priv;
    struct shader_glsl_priv *priv;

    if (!(priv = FUNC3(sizeof(*priv))))
        return E_OUTOFMEMORY;

    FUNC9(&priv->string_buffers);

    if (!(vertex_priv = vertex_pipe->vp_alloc(&glsl_shader_backend, priv)))
    {
        FUNC0("Failed to initialize vertex pipe.\n");
        FUNC5(priv);
        return E_FAIL;
    }

    if (!(fragment_priv = fragment_pipe->alloc_private(&glsl_shader_backend, priv)))
    {
        FUNC0("Failed to initialize fragment pipe.\n");
        vertex_pipe->vp_free(device);
        FUNC5(priv);
        return E_FAIL;
    }

    if (!FUNC8(&priv->shader_buffer))
    {
        FUNC0("Failed to initialize shader buffer.\n");
        goto fail;
    }

    if (!(priv->stack = FUNC4(stack_size, sizeof(*priv->stack))))
    {
        FUNC0("Failed to allocate memory.\n");
        goto fail;
    }

    if (!FUNC2(&priv->vconst_heap, WINED3D_MAX_VS_CONSTS_F))
    {
        FUNC0("Failed to initialize vertex shader constant heap\n");
        goto fail;
    }

    if (!FUNC2(&priv->pconst_heap, WINED3D_MAX_PS_CONSTS_F))
    {
        FUNC0("Failed to initialize pixel shader constant heap\n");
        goto fail;
    }

    FUNC16(&priv->program_lookup, glsl_program_key_compare);

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
    FUNC1(&priv->pconst_heap);
    FUNC1(&priv->vconst_heap);
    FUNC5(priv->stack);
    FUNC7(&priv->shader_buffer);
    fragment_pipe->free_private(device);
    vertex_pipe->vp_free(device);
    FUNC5(priv);
    return E_OUTOFMEMORY;
}