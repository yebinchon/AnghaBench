#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  Revision; int /*<<< orphan*/  SubSysId; int /*<<< orphan*/  DeviceId; int /*<<< orphan*/  VendorId; } ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  TYPE_1__ D3DADAPTER_IDENTIFIER9 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC1(LPCSTR lpszDeviceKey, D3DADAPTER_IDENTIFIER9* pIdentifier)
{
    FUNC0(lpszDeviceKey, &pIdentifier->VendorId, "VEN_");
    FUNC0(lpszDeviceKey, &pIdentifier->DeviceId, "DEV_");
    FUNC0(lpszDeviceKey, &pIdentifier->SubSysId, "SUBSYS_");
    FUNC0(lpszDeviceKey, &pIdentifier->Revision, "REV_");
}