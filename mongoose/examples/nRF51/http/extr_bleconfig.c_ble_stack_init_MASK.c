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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NRF_CLOCK_LFCLKSRC_XTAL_20_PPM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ble_evt_dispatch ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
  uint32_t err_code;

  // Initialize the SoftDevice handler module.
  FUNC1(NRF_CLOCK_LFCLKSRC_XTAL_20_PPM, true);

  // Register with the SoftDevice handler module for BLE events.
  err_code = FUNC2(ble_evt_dispatch);
  FUNC0(err_code);
}