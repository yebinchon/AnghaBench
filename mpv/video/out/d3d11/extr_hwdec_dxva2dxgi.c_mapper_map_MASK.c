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
struct ra_hwdec_mapper {int /*<<< orphan*/ * tex; TYPE_1__* src; struct priv* priv; } ;
struct queue_surf {int /*<<< orphan*/  tex; int /*<<< orphan*/  surf9; } ;
struct priv {int /*<<< orphan*/  dev9; } ;
struct TYPE_6__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {scalar_t__* planes; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_2__ RECT ;
typedef  int /*<<< orphan*/  IDirect3DSurface9 ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  D3DTEXF_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ra_hwdec_mapper*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct queue_surf* FUNC4 (struct ra_hwdec_mapper*) ; 
 int /*<<< orphan*/  FUNC5 (struct ra_hwdec_mapper*,struct queue_surf*) ; 

__attribute__((used)) static int FUNC6(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    HRESULT hr;

    struct queue_surf *surf = FUNC4(mapper);
    if (!surf)
        return -1;

    RECT rc = {0, 0, mapper->src->w, mapper->src->h};
    IDirect3DSurface9* hw_surface = (IDirect3DSurface9 *)mapper->src->planes[3];

    hr = FUNC1(p->dev9, hw_surface, &rc, surf->surf9,
                                        &rc, D3DTEXF_NONE);
    if (FUNC0(hr)) {
        FUNC2(mapper, "StretchRect() failed: %s\n", FUNC3(hr));
        return -1;
    }

    if (!FUNC5(mapper, surf))
        return -1;

    mapper->tex[0] = surf->tex;
    return 0;
}