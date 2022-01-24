#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ra_ctx {struct priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* DXCloseDeviceNV ) (scalar_t__) ;} ;
struct priv {scalar_t__ d3d9_dll; int /*<<< orphan*/  d3d9ex; int /*<<< orphan*/  device; scalar_t__ device_h; TYPE_1__ gl; } ;
typedef  TYPE_1__ GL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    GL *gl = &p->gl;

    if (p->device_h)
        gl->DXCloseDeviceNV(p->device_h);
    FUNC1(p->device);
    FUNC1(p->d3d9ex);
    if (p->d3d9_dll)
        FUNC0(p->d3d9_dll);
}