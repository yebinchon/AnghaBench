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
struct wined3d_device {struct shader_arb_priv* shader_priv; } ;
struct shader_arb_priv {TYPE_2__* vertex_pipe; TYPE_1__* fragment_pipe; int /*<<< orphan*/  signature_tree; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* vp_free ) (struct wined3d_device*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* free_private ) (struct wined3d_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct shader_arb_priv*) ; 
 int /*<<< orphan*/  release_signature ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct wined3d_device *device)
{
    struct shader_arb_priv *priv = device->shader_priv;

    FUNC3(&priv->signature_tree, release_signature, NULL);
    priv->fragment_pipe->free_private(device);
    priv->vertex_pipe->vp_free(device);
    FUNC0(device->shader_priv);
}