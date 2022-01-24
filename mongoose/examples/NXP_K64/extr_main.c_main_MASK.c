#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8_t ;
struct netif {int /*<<< orphan*/  ip_addr; TYPE_1__* dhcp; } ;
struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;
struct mg_bind_opts {char const** error_string; } ;
typedef  int /*<<< orphan*/  ip_addr_t ;
struct TYPE_5__ {int /*<<< orphan*/  CESR; } ;
struct TYPE_4__ {scalar_t__ state; } ;
typedef  TYPE_2__ MPU_Type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ DHCP_BOUND ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_2__* MPU ; 
 int /*<<< orphan*/  MPU_CESR_VLD_MASK ; 
 int /*<<< orphan*/  STATIC_GW ; 
 int /*<<< orphan*/  STATIC_IP ; 
 int /*<<< orphan*/  STATIC_NM ; 
 int /*<<< orphan*/  FUNC7 (struct netif*) ; 
 int /*<<< orphan*/  ethernet_input ; 
 int /*<<< orphan*/  ethernetif_init ; 
 int /*<<< orphan*/  ev_handler ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct mg_connection* FUNC12 (struct mg_mgr*,char*,int /*<<< orphan*/ ,struct mg_bind_opts) ; 
 int /*<<< orphan*/  FUNC13 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct mg_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC16 (struct netif*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct netif*) ; 
 int /*<<< orphan*/  FUNC18 (struct netif*) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 int /*<<< orphan*/  FUNC20 () ; 

int FUNC21(void) {
  struct netif eth0;
  MPU_Type *base = MPU;
  FUNC2();
  FUNC0();
  FUNC1();
  /* Disable MPU. */
  base->CESR &= ~MPU_CESR_VLD_MASK;
  FUNC11();
  FUNC8();
  FUNC6();
  FUNC19("Waiting for link...\r\n");
#if USE_DHCP
  netif_add(&eth0, NULL, NULL, NULL, NULL, ethernetif_init, ethernet_input);
  printf("Waiting for DHCP...\r\n");
  LED_GREEN_ON();
  dhcp_start(&eth0);
  u8_t os = 0xff, ds;
  do {
    ds = eth0.dhcp->state;
    if (ds != os) {
      printf("  DHCP state: %d\r\n", ds);
      os = ds;
    }
    sys_check_timeouts();
  } while (ds != DHCP_BOUND);
  printf("DHCP bound.\r\n");
#else
  ip_addr_t ip, nm, gw;
  if (!FUNC9(STATIC_IP, &ip) || !FUNC9(STATIC_NM, &nm) ||
      !FUNC9(STATIC_GW, &gw)) {
    FUNC19("Invalid static IP configuration.\r\n");
    return 1;
  } else {
    FUNC16(&eth0, &ip, &nm, &gw, NULL, ethernetif_init, ethernet_input);
    FUNC18(&eth0);
  }
#endif
  FUNC17(&eth0);
  FUNC19("Setting up HTTP server...\r\n");

  struct mg_mgr mgr;
  FUNC13(&mgr, NULL);

  const char *err;
  struct mg_bind_opts opts = {};
  opts.error_string = &err;
  struct mg_connection *nc = FUNC12(&mgr, "80", ev_handler, opts);
  if (nc == NULL) {
    FUNC19("Failed to create listener: %s\r\n", err);
    FUNC6();
    FUNC3();
    return 1;
  }
  FUNC15(nc);
  FUNC19("Server address: http://%s/\r\n", FUNC10(&eth0.ip_addr));
  FUNC5();
  FUNC4();

  while (1) {
    FUNC20();
    FUNC14(&mgr, 0);
  }

  return 0;
}