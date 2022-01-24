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
struct TYPE_6__ {int /*<<< orphan*/  d3d_device; int /*<<< orphan*/  d3d_backbuf; } ;
typedef  TYPE_1__ d3d_priv ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  D3DBACKBUFFER_TYPE_MONO ; 
 int /*<<< orphan*/  D3DBLEND_INVSRCALPHA ; 
 int /*<<< orphan*/  D3DBLEND_SRCALPHA ; 
 int /*<<< orphan*/  D3DCMP_GREATER ; 
 int /*<<< orphan*/  D3DRS_ALPHAFUNC ; 
 int /*<<< orphan*/  D3DRS_ALPHAREF ; 
 int /*<<< orphan*/  D3DRS_DESTBLEND ; 
 int /*<<< orphan*/  D3DRS_LIGHTING ; 
 int /*<<< orphan*/  D3DRS_SRCBLEND ; 
 int /*<<< orphan*/  D3DSAMP_ADDRESSU ; 
 int /*<<< orphan*/  D3DSAMP_ADDRESSV ; 
 int /*<<< orphan*/  D3DSAMP_MAGFILTER ; 
 int /*<<< orphan*/  D3DSAMP_MINFILTER ; 
 int /*<<< orphan*/  D3DTADDRESS_CLAMP ; 
 int /*<<< orphan*/  D3DTEXF_LINEAR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC7(d3d_priv *priv)
{
    FUNC5(priv, "create_d3d_surfaces called.\n");

    if (!priv->d3d_backbuf &&
        FUNC0(FUNC1(priv->d3d_device, 0, 0,
                                              D3DBACKBUFFER_TYPE_MONO,
                                              &priv->d3d_backbuf))) {
        FUNC4(priv, "Allocating backbuffer failed.\n");
        return 0;
    }

    if (!FUNC6(priv))
        return 0;

    /* setup default renderstate */
    FUNC2(priv->d3d_device,
                                    D3DRS_SRCBLEND, D3DBLEND_SRCALPHA);
    FUNC2(priv->d3d_device,
                                    D3DRS_DESTBLEND, D3DBLEND_INVSRCALPHA);
    FUNC2(priv->d3d_device,
                                    D3DRS_ALPHAFUNC, D3DCMP_GREATER);
    FUNC2(priv->d3d_device,
                                    D3DRS_ALPHAREF, (DWORD)0x0);
    FUNC2(priv->d3d_device,
                                    D3DRS_LIGHTING, FALSE);

    // we use up to 3 samplers for up to 3 YUV planes
    for (int n = 0; n < 3; n++) {
        FUNC3(priv->d3d_device, n, D3DSAMP_MINFILTER,
                                         D3DTEXF_LINEAR);
        FUNC3(priv->d3d_device, n, D3DSAMP_MAGFILTER,
                                         D3DTEXF_LINEAR);
        FUNC3(priv->d3d_device, n, D3DSAMP_ADDRESSU,
                                         D3DTADDRESS_CLAMP);
        FUNC3(priv->d3d_device, n, D3DSAMP_ADDRESSV,
                                         D3DTADDRESS_CLAMP);
    }

    return 1;
}