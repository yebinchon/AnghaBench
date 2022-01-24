#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* dlgw; } ;
struct TYPE_18__ {TYPE_2__ u; scalar_t__ unicode; } ;
typedef  TYPE_7__ pagesetup_data ;
typedef  void* WORD ;
struct TYPE_17__ {void* dmPaperSize; } ;
struct TYPE_16__ {TYPE_6__ s1; } ;
struct TYPE_20__ {TYPE_5__ u1; } ;
struct TYPE_14__ {void* dmPaperSize; } ;
struct TYPE_15__ {TYPE_3__ s1; } ;
struct TYPE_19__ {TYPE_4__ u1; } ;
struct TYPE_12__ {int /*<<< orphan*/  hDevMode; } ;
typedef  TYPE_8__ DEVMODEW ;
typedef  TYPE_9__ DEVMODEA ;

/* Variables and functions */
 TYPE_8__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(pagesetup_data *data, WORD paper)
{
    DEVMODEW *dm = FUNC0(data->u.dlgw->hDevMode);

    if(data->unicode)
        dm->u1.s1.dmPaperSize = paper;
    else
    {
        DEVMODEA *dmA = (DEVMODEA *)dm;
        dmA->u1.s1.dmPaperSize = paper;
    }
    FUNC1(data->u.dlgw->hDevMode);
}