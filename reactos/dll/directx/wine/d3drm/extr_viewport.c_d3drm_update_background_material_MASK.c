#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct d3drm_viewport {int /*<<< orphan*/  material; int /*<<< orphan*/  camera; } ;
typedef  int /*<<< orphan*/  mat ;
struct TYPE_5__ {int /*<<< orphan*/  diffuse; } ;
struct TYPE_6__ {int dwSize; TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  IDirect3DRMFrame ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ D3DMATERIAL ;
typedef  int /*<<< orphan*/  D3DCOLOR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static HRESULT FUNC7(struct d3drm_viewport *viewport)
{
    IDirect3DRMFrame *root_frame;
    D3DCOLOR color;
    D3DMATERIAL mat;
    HRESULT hr;

    if (FUNC0(hr = FUNC2(viewport->camera, &root_frame)))
        return hr;
    color = FUNC3(root_frame);
    FUNC4(root_frame);

    FUNC6(&mat, 0, sizeof(mat));
    mat.dwSize = sizeof(mat);
    FUNC5(&mat.u.diffuse, color);

    return FUNC1(viewport->material, &mat);
}