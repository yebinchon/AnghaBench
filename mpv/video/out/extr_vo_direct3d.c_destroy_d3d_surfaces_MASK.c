#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct osdpart {int change_id; int /*<<< orphan*/  texture; } ;
struct TYPE_6__ {int d3d_in_scene; int /*<<< orphan*/ * d3d_backbuf; struct osdpart** osd; } ;
typedef  TYPE_1__ d3d_priv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_OSD_PARTS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(d3d_priv *priv)
{
    FUNC1(priv, "destroy_d3d_surfaces called.\n");

    FUNC2(priv);

    for (int n = 0; n < MAX_OSD_PARTS; n++) {
        struct osdpart *osd = priv->osd[n];
        FUNC3(priv, &osd->texture);
        osd->change_id = -1;
    }

    if (priv->d3d_backbuf)
        FUNC0(priv->d3d_backbuf);
    priv->d3d_backbuf = NULL;

    priv->d3d_in_scene = false;
}