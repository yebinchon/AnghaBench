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
struct wined3d_device {struct shader_glsl_priv* shader_priv; } ;
struct shader_glsl_priv {TYPE_2__* vertex_pipe; TYPE_1__* fragment_pipe; int /*<<< orphan*/  shader_buffer; int /*<<< orphan*/  string_buffers; struct shader_glsl_priv* stack; int /*<<< orphan*/  vconst_heap; int /*<<< orphan*/  pconst_heap; int /*<<< orphan*/  program_lookup; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* vp_free ) (struct wined3d_device*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* free_private ) (struct wined3d_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct shader_glsl_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct wined3d_device *device)
{
    struct shader_glsl_priv *priv = device->shader_priv;

    FUNC6(&priv->program_lookup, NULL, NULL);
    FUNC0(&priv->pconst_heap);
    FUNC0(&priv->vconst_heap);
    FUNC1(priv->stack);
    FUNC3(&priv->string_buffers);
    FUNC2(&priv->shader_buffer);
    priv->fragment_pipe->free_private(device);
    priv->vertex_pipe->vp_free(device);

    FUNC1(device->shader_priv);
    device->shader_priv = NULL;
}