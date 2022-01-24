#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  hDirectDrawLocal; } ;
struct TYPE_4__ {TYPE_3__* pUnknown6BC; } ;
typedef  TYPE_1__* LPD3D9_DEVICEDATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_NumDevices ; 

__attribute__((used)) static void FUNC3(LPD3D9_DEVICEDATA pDeviceData)
{
    FUNC2(pDeviceData->pUnknown6BC->hDirectDrawLocal);

    FUNC1(FUNC0(), 0, pDeviceData->pUnknown6BC);
    pDeviceData->pUnknown6BC = NULL;

    --g_NumDevices;
}