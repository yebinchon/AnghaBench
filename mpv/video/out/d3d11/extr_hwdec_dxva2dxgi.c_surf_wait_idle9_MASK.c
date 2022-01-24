#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ra_hwdec_mapper {TYPE_1__* src; struct priv* priv; } ;
struct queue_surf {int /*<<< orphan*/  stage9; int /*<<< orphan*/  surf9; } ;
struct priv {size_t queue_pos; TYPE_2__** queue; int /*<<< orphan*/  dev9; } ;
struct TYPE_8__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_7__ {int busy11; } ;
struct TYPE_6__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_3__ RECT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  D3DLOCKED_RECT ;

/* Variables and functions */
 int /*<<< orphan*/  D3DLOCK_READONLY ; 
 int /*<<< orphan*/  D3DTEXF_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ra_hwdec_mapper*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct ra_hwdec_mapper *mapper,
                            struct queue_surf *surf)
{
    struct priv *p = mapper->priv;
    HRESULT hr;

    // Rather than polling for the surface to become idle, copy part of the
    // surface to a staging texture and map it. This should block until the
    // surface becomes idle. Microsoft's ISurfaceQueue does this as well.
    RECT rc = {0, 0, FUNC4(16, mapper->src->w), FUNC4(16, mapper->src->h)};
    hr = FUNC1(p->dev9, surf->surf9, &rc, surf->stage9,
                                        &rc, D3DTEXF_NONE);
    if (FUNC0(hr)) {
        FUNC5(mapper, "Couldn't copy to D3D9 staging texture: %s\n",
               FUNC6(hr));
        return false;
    }

    D3DLOCKED_RECT lock;
    hr = FUNC2(surf->stage9, &lock, NULL, D3DLOCK_READONLY);
    if (FUNC0(hr)) {
        FUNC5(mapper, "Couldn't map D3D9 staging texture: %s\n",
               FUNC6(hr));
        return false;
    }

    FUNC3(surf->stage9);
    p->queue[p->queue_pos]->busy11 = true;
    return true;
}