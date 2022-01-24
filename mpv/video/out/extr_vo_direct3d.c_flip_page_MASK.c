#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vo {int /*<<< orphan*/  dheight; int /*<<< orphan*/  dwidth; TYPE_1__* priv; } ;
struct TYPE_7__ {int d3d_in_scene; scalar_t__ d3d_device; } ;
typedef  TYPE_1__ d3d_priv ;
struct TYPE_8__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ RECT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct vo *vo)
{
    d3d_priv *priv = vo->priv;

    if (priv->d3d_device && priv->d3d_in_scene) {
        if (FUNC0(FUNC1(priv->d3d_device))) {
            FUNC3(priv, "EndScene failed.\n");
        }
    }
    priv->d3d_in_scene = false;

    RECT rect = {0, 0, vo->dwidth, vo->dheight};
    if (!priv->d3d_device ||
        FUNC0(FUNC2(priv->d3d_device, &rect, 0, 0, 0))) {
        FUNC4(priv, "Trying to reinitialize uncooperative video adapter.\n");
        if (!FUNC5(priv)) {
            FUNC4(priv, "Reinitialization failed.\n");
            return;
        } else {
            FUNC4(priv, "Video adapter reinitialized.\n");
        }
    }
}