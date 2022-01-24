#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  CC3000_UsynchCallback ; 
 int HCI_EVNT_WLAN_ASYNC_PING_REPORT ; 
 int HCI_EVNT_WLAN_KEEPALIVE ; 
 int HCI_EVNT_WLAN_UNSOL_INIT ; 
 int /*<<< orphan*/  ReadWlanInterruptPin ; 
 int /*<<< orphan*/  SpiPauseSpi ; 
 int /*<<< orphan*/  SpiResumeSpi ; 
 int /*<<< orphan*/  WriteWlanPin ; 
 scalar_t__ aucCC3000_prefix ; 
 int /*<<< orphan*/  sendBootLoaderPatch ; 
 int /*<<< orphan*/  sendDriverPatch ; 
 int /*<<< orphan*/  sendWLFWPatch ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned short) ; 

__attribute__((used)) static int FUNC7(unsigned short cRequestPatch)
{
    // WLAN On API Implementation
    FUNC1(CC3000_UsynchCallback, sendWLFWPatch, sendDriverPatch, sendBootLoaderPatch,
              ReadWlanInterruptPin, SpiResumeSpi, SpiPauseSpi, WriteWlanPin);

    // Trigger a WLAN device
    FUNC6(cRequestPatch);
    FUNC5((char*)aucCC3000_prefix);
    FUNC3(0, 0, 0);
    FUNC2(255);

    // Mask out all non-required events from CC3000
    FUNC4(HCI_EVNT_WLAN_KEEPALIVE|
                        HCI_EVNT_WLAN_UNSOL_INIT|
                        HCI_EVNT_WLAN_ASYNC_PING_REPORT);

    //unsolicicted_events_timer_init();
    FUNC0(100);
    return(0);
}