#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  d3d_priv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(d3d_priv *priv)
{
    FUNC0(priv, "reconfigure_d3d called.\n");

    // Force complete destruction of the D3D state.
    // Note: this step could be omitted. The resize_d3d call below would detect
    // that d3d_device is NULL, and would properly recreate it. I'm not sure why
    // the following code to release and recreate the d3d_handle exists.
    FUNC1(priv);
    if (!FUNC2(priv))
        return 0;

    // Proper re-initialization.
    if (!FUNC3(priv))
        return 0;

    return 1;
}