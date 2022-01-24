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
typedef  scalar_t__ u8_t ;
struct netif {int /*<<< orphan*/  ip_addr; TYPE_1__* dhcp; } ;
struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;
struct mg_bind_opts {char const** error_string; } ;
typedef  int /*<<< orphan*/  ip_addr_t ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ DHCP_BOUND ; 
 int /*<<< orphan*/  STATIC_GW ; 
 int /*<<< orphan*/  STATIC_IP ; 
 int /*<<< orphan*/  STATIC_NM ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct netif*) ; 
 int /*<<< orphan*/  ethernet_input ; 
 int /*<<< orphan*/  ev_handler ; 
 int /*<<< orphan*/  FUNC5 (struct netif*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lpc_enetif_init ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct mg_connection* FUNC9 (struct mg_mgr*,char*,int /*<<< orphan*/ ,struct mg_bind_opts) ; 
 int /*<<< orphan*/  FUNC10 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct mg_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC13 (struct netif*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct netif*) ; 
 int /*<<< orphan*/  FUNC15 (struct netif*) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 () ; 

int FUNC18(void) {
  struct netif eth0;

  FUNC3();
  FUNC0();
  FUNC2(1);

  FUNC8();

  FUNC1(0, false); /* Link state */
  FUNC1(1, false); /* DHCP state */
  FUNC1(2, false); /* HTTP request activity indicator */
  FUNC1(3, false); /* Error indicator */

#if USE_DHCP
  netif_add(&eth0, NULL, NULL, NULL, NULL, lpc_enetif_init, ethernet_input);
  printf("Waiting for DHCP...\r\n");
  dhcp_start(&eth0);
  u8_t os = 0xff, ds;
  do {
    ds = eth0.dhcp->state;
    if (ds != os) {
      printf("  DHCP state: %d\r\n", ds);
      os = ds;
    }
    handle_eth(&eth0);
    sys_check_timeouts();
  } while (ds != DHCP_BOUND);
  printf("DHCP bound.\r\n");
#else
  ip_addr_t ip, nm, gw;
  if (!FUNC6(STATIC_IP, &ip) || !FUNC6(STATIC_NM, &nm) ||
      !FUNC6(STATIC_GW, &gw)) {
    FUNC16("Invalid static IP configuration.\r\n");
    FUNC1(3, true);
    return 1;
  } else {
    FUNC13(&eth0, &ip, &nm, &gw, NULL, lpc_enetif_init, ethernet_input);
    FUNC15(&eth0);
  }
#endif
  FUNC14(&eth0);
  FUNC16("Setting up HTTP server...\r\n");

  struct mg_mgr mgr;
  FUNC10(&mgr, NULL);

  const char *err;
  struct mg_bind_opts opts = {};
  opts.error_string = &err;
  struct mg_connection *nc = FUNC9(&mgr, "80", ev_handler, opts);
  if (nc == NULL) {
    FUNC16("Failed to create listener: %s\r\n", err);
    FUNC1(3, true);
    return 1;
  }
  FUNC12(nc);
  FUNC16("Server address: http://%s/\r\n", FUNC7(&eth0.ip_addr));

  while (1) {
    /* Ethernet link status, low level input. */
    FUNC5(&eth0);

    /* LWIP timers - ARP, DHCP, TCP, etc. */
    FUNC17();

    /* Mongoose poll */
    FUNC11(&mgr, 0);
  }

  return 0;
}