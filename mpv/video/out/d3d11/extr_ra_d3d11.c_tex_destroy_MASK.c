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
struct ra_tex {struct d3d_tex* priv; } ;
struct ra {int dummy; } ;
struct d3d_tex {int /*<<< orphan*/  staging; int /*<<< orphan*/  res; int /*<<< orphan*/  sampler; int /*<<< orphan*/  uav; int /*<<< orphan*/  rtv; int /*<<< orphan*/  srv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ra_tex*) ; 

__attribute__((used)) static void FUNC2(struct ra *ra, struct ra_tex *tex)
{
    if (!tex)
        return;
    struct d3d_tex *tex_p = tex->priv;

    FUNC0(tex_p->srv);
    FUNC0(tex_p->rtv);
    FUNC0(tex_p->uav);
    FUNC0(tex_p->sampler);
    FUNC0(tex_p->res);
    FUNC0(tex_p->staging);
    FUNC1(tex);
}