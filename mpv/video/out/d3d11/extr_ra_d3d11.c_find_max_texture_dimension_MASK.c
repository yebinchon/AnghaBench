#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ra_d3d11 {int /*<<< orphan*/  dev; } ;
struct ra {int max_texture_wh; struct ra_d3d11* priv; } ;
struct TYPE_4__ {int Count; } ;
struct TYPE_5__ {int Width; int Height; int MipLevels; int ArraySize; int /*<<< orphan*/  BindFlags; int /*<<< orphan*/  Format; TYPE_1__ SampleDesc; } ;
typedef  TYPE_2__ D3D11_TEXTURE2D_DESC ;

/* Variables and functions */
 int /*<<< orphan*/  D3D11_BIND_SHADER_RESOURCE ; 
 int /*<<< orphan*/  DXGI_FORMAT_R8_UNORM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ra *ra)
{
    struct ra_d3d11 *p = ra->priv;

    D3D11_TEXTURE2D_DESC desc = {
        .Width = ra->max_texture_wh,
        .Height = ra->max_texture_wh,
        .MipLevels = 1,
        .ArraySize = 1,
        .SampleDesc.Count = 1,
        .Format = DXGI_FORMAT_R8_UNORM,
        .BindFlags = D3D11_BIND_SHADER_RESOURCE,
    };
    while (true) {
        desc.Height = desc.Width *= 2;
        if (desc.Width >= 0x8000000u)
            return;
        if (FUNC0(FUNC1(p->dev, &desc, NULL, NULL)))
            return;
        ra->max_texture_wh = desc.Width;
    }
}