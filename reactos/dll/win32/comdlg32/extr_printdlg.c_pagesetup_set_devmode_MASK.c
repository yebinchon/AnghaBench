#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_1__* dlgw; } ;
struct TYPE_13__ {TYPE_2__ u; scalar_t__ unicode; } ;
typedef  TYPE_3__ pagesetup_data ;
struct TYPE_15__ {scalar_t__ dmDriverExtra; scalar_t__ dmSize; } ;
struct TYPE_14__ {scalar_t__ dmDriverExtra; scalar_t__ dmSize; } ;
struct TYPE_11__ {int /*<<< orphan*/  hDevMode; } ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_4__ DEVMODEW ;
typedef  TYPE_5__ DEVMODEA ;

/* Variables and functions */
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 TYPE_5__* FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,scalar_t__) ; 

__attribute__((used)) static void FUNC8(pagesetup_data *data, DEVMODEW *dm)
{
    DEVMODEA *dmA = NULL;
    void *src, *dst;
    DWORD size;

    if(data->unicode)
    {
        size = dm->dmSize + dm->dmDriverExtra;
        src = dm;
    }
    else
    {
        dmA = FUNC6(dm);
        size = dmA->dmSize + dmA->dmDriverExtra;
        src = dmA;
    }

    if(data->u.dlgw->hDevMode)
        data->u.dlgw->hDevMode = FUNC3(data->u.dlgw->hDevMode, size,
                                               GMEM_MOVEABLE);
    else
        data->u.dlgw->hDevMode = FUNC1(GMEM_MOVEABLE, size);

    dst = FUNC2(data->u.dlgw->hDevMode);
    FUNC7(dst, src, size);
    FUNC4(data->u.dlgw->hDevMode);
    FUNC5(FUNC0(), 0, dmA);
}