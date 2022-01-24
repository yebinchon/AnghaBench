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
struct d3dtex {scalar_t__ tex_h; scalar_t__ tex_w; int /*<<< orphan*/ * device; int /*<<< orphan*/ * system; } ;
typedef  int /*<<< orphan*/  d3d_priv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(d3d_priv *priv, struct d3dtex *tex)
{
    if (tex->system)
        FUNC0(tex->system);
    tex->system = NULL;

    if (tex->device)
        FUNC0(tex->device);
    tex->device = NULL;

    tex->tex_w = tex->tex_h = 0;
}