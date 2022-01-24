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
struct TYPE_5__ {int /*<<< orphan*/  null; int /*<<< orphan*/  texture; int /*<<< orphan*/  atlas; int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int Pitch; scalar_t__ pBits; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ D3DLOCKED_RECT ;

/* Variables and functions */
 int /*<<< orphan*/  D3DFMT_A8R8G8B8 ; 
 int /*<<< orphan*/  D3DPOOL_DEFAULT ; 
 int /*<<< orphan*/  D3DUSAGE_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NK_FONT_ATLAS_RGBA32 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__ d3d9 ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9()
{
    int w, h, y;
    const void *image;

    HRESULT hr;
    D3DLOCKED_RECT locked;

    image = FUNC6(&d3d9.atlas, &w, &h, NK_FONT_ATLAS_RGBA32);

    hr = FUNC0(d3d9.device, w, h, 1, D3DUSAGE_DYNAMIC, D3DFMT_A8R8G8B8, D3DPOOL_DEFAULT, &d3d9.texture, NULL);
    FUNC3(FUNC4(hr));

    hr = FUNC1(d3d9.texture, 0, &locked, NULL, 0);
    FUNC3(FUNC4(hr));

    for (y = 0; y < h; y++) {
        void *src = (char *)image + y * w * 4;
        void *dst = (char *)locked.pBits + y * locked.Pitch;
        FUNC5(dst, src, w * 4);
    }

    hr = FUNC2(d3d9.texture, 0);
    FUNC3(FUNC4(hr));

    FUNC7(&d3d9.atlas, FUNC8(d3d9.texture), &d3d9.null);
}