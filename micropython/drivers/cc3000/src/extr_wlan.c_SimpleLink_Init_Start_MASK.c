#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ UINT16 ;
struct TYPE_2__ {int /*<<< orphan*/ * pucTxCommandBuffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_CMND_SIMPLE_LINK_START ; 
 int HEADERS_SIZE_CMD ; 
 int /*<<< orphan*/  SL_PATCHES_REQUEST_DEFAULT ; 
 int /*<<< orphan*/  SL_PATCHES_REQUEST_FORCE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WLAN_SL_INIT_START_PARAMS_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ tSLInformation ; 

__attribute__((used)) static void FUNC3(UINT16 usPatchesAvailableAtHost)
{
	UINT8 *ptr;
	UINT8 *args;

	ptr = tSLInformation.pucTxCommandBuffer;
	args = (UINT8 *)(ptr + HEADERS_SIZE_CMD);

	FUNC1(args, ((usPatchesAvailableAtHost) ? SL_PATCHES_REQUEST_FORCE_NONE : SL_PATCHES_REQUEST_DEFAULT));

	// IRQ Line asserted - send HCI_CMND_SIMPLE_LINK_START to CC3000
	FUNC2(HCI_CMND_SIMPLE_LINK_START, ptr, WLAN_SL_INIT_START_PARAMS_LEN);

	FUNC0(HCI_CMND_SIMPLE_LINK_START, 0);
}