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
struct ra_hwdec_mapper {TYPE_1__* src; int /*<<< orphan*/  ra; struct priv* priv; } ;
struct priv {int /*<<< orphan*/  rtarget_h; int /*<<< orphan*/  device_h; int /*<<< orphan*/  rtarget; int /*<<< orphan*/  device; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* DXLockObjectsNV ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* DXUnlockObjectsNV ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_7__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; scalar_t__* planes; } ;
typedef  TYPE_2__ RECT ;
typedef  int /*<<< orphan*/  IDirect3DSurface9 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ GL ;

/* Variables and functions */
 int /*<<< orphan*/  D3DTEXF_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ra_hwdec_mapper*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    GL *gl = FUNC5(mapper->ra);
    HRESULT hr;

    if (!gl->DXUnlockObjectsNV(p->device_h, 1, &p->rtarget_h)) {
        FUNC2(mapper, "Failed unlocking texture for access by OpenGL: %s\n",
               FUNC4());
        return -1;
    }

    IDirect3DSurface9* hw_surface = (IDirect3DSurface9 *)mapper->src->planes[3];
    RECT rc = {0, 0, mapper->src->w, mapper->src->h};
    hr = FUNC1(p->device,
                                        hw_surface, &rc,
                                        p->rtarget, &rc,
                                        D3DTEXF_NONE);
    if (FUNC0(hr)) {
        FUNC2(mapper, "Direct3D RGB conversion failed: %s", FUNC3(hr));
        return -1;
    }

    if (!gl->DXLockObjectsNV(p->device_h, 1, &p->rtarget_h)) {
        FUNC2(mapper, "Failed locking texture for access by OpenGL: %s\n",
               FUNC4());
        return -1;
    }

    return 0;
}