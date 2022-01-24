#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int tex_h; } ;
struct TYPE_8__ {int Pitch; int /*<<< orphan*/  pBits; } ;
struct texplane {TYPE_1__ texture; TYPE_2__ locked_rect; int /*<<< orphan*/  clearval; } ;
struct TYPE_9__ {int plane_count; struct texplane* planes; } ;
typedef  TYPE_3__ d3d_priv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(d3d_priv *priv)
{
    if (!FUNC0(priv))
        return;

    for (int n = 0; n < priv->plane_count; n++) {
        struct texplane *plane = &priv->planes[n];
        FUNC2(plane->locked_rect.pBits, plane->clearval,
               plane->locked_rect.Pitch * plane->texture.tex_h);
    }

    FUNC1(priv);
}