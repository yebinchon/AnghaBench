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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct mg_connection {int dummy; } ;
struct mg_bind_opts {char const** error_string; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLP_D1 ; 
 int /*<<< orphan*/  CLP_D1_PIN ; 
 int /*<<< orphan*/  CLP_D1_PORT ; 
 int /*<<< orphan*/  CLP_D2 ; 
 int /*<<< orphan*/  CLP_D2_PIN ; 
 int /*<<< orphan*/  CLP_D2_PORT ; 
 int /*<<< orphan*/  IPADDR_USE_DHCP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int SYSCTL_CFG_VCO_480 ; 
 int /*<<< orphan*/  SYSCTL_MOSC_HIGHFREQ ; 
 int SYSCTL_OSC_MAIN ; 
 int SYSCTL_USE_PLL ; 
 int SYSCTL_XTAL_25MHZ ; 
 int SYSTICKHZ ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  ev_handler ; 
 int /*<<< orphan*/  g_mgr ; 
 int /*<<< orphan*/  FUNC11 (int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mg_connection* FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,struct mg_bind_opts) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct mg_connection*) ; 

int FUNC15(void) {
  //
  // Make sure the main oscillator is enabled because this is required by
  // the PHY.  The system must have a 25MHz crystal attached to the OSC
  // pins. The SYSCTL_MOSC_HIGHFREQ parameter is used when the crystal
  // frequency is 10MHz or higher.
  //
  FUNC8(SYSCTL_MOSC_HIGHFREQ);

  // Run from the PLL at 120 MHz.
  uint32_t sys_clk =
      FUNC3((SYSCTL_XTAL_25MHZ | SYSCTL_OSC_MAIN |
                              SYSCTL_USE_PLL | SYSCTL_CFG_VCO_480),
                             120000000);

  // Configure the device pins.
  FUNC7(true, false);

  // Configure UART.
  FUNC9(0, 115200, sys_clk);
  FUNC10("Mongoose example\n\n");

  // Configure board's LEDs: D2 is on when IP has been acquired,
  // D1 is toggled on every HTTP request.
  FUNC2(CLP_D1_PORT, CLP_D1_PIN);
  FUNC2(CLP_D2_PORT, CLP_D2_PIN);
  FUNC0(CLP_D1, 0);
  FUNC0(CLP_D2, 0);

  //
  // Configure the hardware MAC address for Ethernet Controller filtering of
  // incoming packets.  The MAC address will be stored in the non-volatile
  // USER0 and USER1 registers.
  //
  uint32_t u0, u1;
  FUNC1(&u0, &u1);
  uint8_t mac[6];
  mac[0] = ((u0 >> 0) & 0xff);
  mac[1] = ((u0 >> 8) & 0xff);
  mac[2] = ((u0 >> 16) & 0xff);
  mac[3] = ((u1 >> 0) & 0xff);
  mac[4] = ((u1 >> 8) & 0xff);
  mac[5] = ((u1 >> 16) & 0xff);

  // Initialize the lwIP library, using DHCP.
  FUNC11(sys_clk, mac, 0, 0, 0, IPADDR_USE_DHCP);

  // Configure Mongoose, create an HTTP listener.
  FUNC13(&g_mgr, NULL);
  const char *err;
  struct mg_bind_opts opts = {};
  opts.error_string = &err;
  struct mg_connection *nc = FUNC12(&g_mgr, "80", ev_handler, opts);
  if (nc == NULL) {
    FUNC10("Failed to create listener: %s\r\n", err);
    return 1;
  }
  FUNC14(nc);

  // Configure SysTick for a periodic interrupt.
  FUNC6(sys_clk / SYSTICKHZ);
  FUNC4();
  FUNC5();

  // Loop forever.  All the work is done in interrupt handlers.
  while (true) {
  }
}