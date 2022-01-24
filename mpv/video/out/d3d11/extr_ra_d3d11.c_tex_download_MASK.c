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
struct ra_tex_download_params {char* dst; int stride; struct ra_tex* tex; } ;
struct TYPE_4__ {int h; } ;
struct ra_tex {TYPE_1__ params; struct d3d_tex* priv; } ;
struct ra_d3d11 {int /*<<< orphan*/  ctx; } ;
struct ra {struct ra_d3d11* priv; } ;
struct d3d_tex {scalar_t__ staging; int /*<<< orphan*/  res; } ;
struct TYPE_5__ {char* pData; int RowPitch; } ;
typedef  int /*<<< orphan*/  ID3D11Resource ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ D3D11_MAPPED_SUBRESOURCE ;

/* Variables and functions */
 int /*<<< orphan*/  D3D11_MAP_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ra*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(struct ra *ra, struct ra_tex_download_params *params)
{
    struct ra_d3d11 *p = ra->priv;
    struct ra_tex *tex = params->tex;
    struct d3d_tex *tex_p = tex->priv;
    HRESULT hr;

    if (!tex_p->staging)
        return false;

    FUNC1(p->ctx, (ID3D11Resource*)tex_p->staging,
        tex_p->res);

    D3D11_MAPPED_SUBRESOURCE lock;
    hr = FUNC2(p->ctx, (ID3D11Resource*)tex_p->staging, 0,
                                 D3D11_MAP_READ, 0, &lock);
    if (FUNC0(hr)) {
        FUNC5(ra, "Failed to map staging texture: %s\n", FUNC7(hr));
        return false;
    }

    char *cdst = params->dst;
    char *csrc = lock.pData;
    for (int y = 0; y < tex->params.h; y++) {
        FUNC6(cdst + y * params->stride, csrc + y * lock.RowPitch,
               FUNC4(params->stride, lock.RowPitch));
    }

    FUNC3(p->ctx, (ID3D11Resource*)tex_p->staging, 0);

    return true;
}