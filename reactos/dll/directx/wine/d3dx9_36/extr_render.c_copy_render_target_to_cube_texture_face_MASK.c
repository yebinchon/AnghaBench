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
typedef  int /*<<< orphan*/  IDirect3DSurface9 ;
typedef  int /*<<< orphan*/  IDirect3DCubeTexture9 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  D3DCUBEMAP_FACES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(IDirect3DCubeTexture9 *cube_texture,
        D3DCUBEMAP_FACES face, IDirect3DSurface9 *render_target, DWORD filter)
{
    HRESULT hr;
    IDirect3DSurface9 *cube_surface;

    FUNC3(cube_texture, face, 0, &cube_surface);

    hr = FUNC0(cube_surface, NULL, NULL, render_target, NULL, NULL, filter, 0);
    if (FUNC2(hr)) FUNC1("Copying render target data to surface failed %#x\n", hr);

    FUNC4(cube_surface);
}