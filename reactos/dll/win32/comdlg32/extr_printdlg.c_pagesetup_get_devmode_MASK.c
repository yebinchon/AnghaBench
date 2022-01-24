#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* dlgw; } ;
struct TYPE_14__ {TYPE_2__ u; scalar_t__ unicode; } ;
typedef  TYPE_3__ pagesetup_data ;
struct TYPE_15__ {scalar_t__ dmDriverExtra; scalar_t__ dmSize; } ;
struct TYPE_12__ {int /*<<< orphan*/  hDevMode; } ;
typedef  TYPE_4__ DEVMODEW ;
typedef  int /*<<< orphan*/  DEVMODEA ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_4__*,scalar_t__) ; 

__attribute__((used)) static DEVMODEW *FUNC6(const pagesetup_data *data)
{
    DEVMODEW *dm = FUNC2(data->u.dlgw->hDevMode);
    DEVMODEW *ret;

    if(data->unicode)
    {
        /* We make a copy even in the unicode case because the ptr
           may get passed back to us in pagesetup_set_devmode. */
        ret = FUNC4(FUNC1(), 0, dm->dmSize + dm->dmDriverExtra);
        FUNC5(ret, dm, dm->dmSize + dm->dmDriverExtra);
    }
    else
        ret = FUNC0((DEVMODEA *)dm);

    FUNC3(data->u.dlgw->hDevMode);
    return ret;
}