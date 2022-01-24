#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * d3d_handle; int /*<<< orphan*/ * d3d_device; int /*<<< orphan*/ ** pixel_shaders; } ;
typedef  TYPE_1__ d3d_priv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int NUM_SHADERS ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(d3d_priv *priv)
{
    FUNC4(priv);

    for (int n = 0; n < NUM_SHADERS; n++) {
        if (priv->pixel_shaders[n])
            FUNC2(priv->pixel_shaders[n]);
        priv->pixel_shaders[n] = NULL;
    }

    if (priv->d3d_device)
        FUNC1(priv->d3d_device);
    priv->d3d_device = NULL;

    if (priv->d3d_handle) {
        FUNC3(priv, "Stopping Direct3D.\n");
        FUNC0(priv->d3d_handle);
    }
    priv->d3d_handle = NULL;
}