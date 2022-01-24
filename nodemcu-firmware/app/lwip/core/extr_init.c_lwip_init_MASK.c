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
 int MEMP_NUM_TCP_PCB ; 
 int TCP_MAXRTX ; 
 int TCP_MSS ; 
 int TCP_SYNMAXRTX ; 
 int TCP_WND ; 
 int /*<<< orphan*/  _bss_end ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 

void
FUNC18(void)
{
  MEMP_NUM_TCP_PCB = 5;
  TCP_WND = (4 * TCP_MSS);
  TCP_MAXRTX = 12;
  TCP_SYNMAXRTX = 6;

  /* Sanity check user-configurable values */
  FUNC5();

  /* Modules initialization */
  FUNC13();
#if !NO_SYS
  FUNC14();
#endif /* !NO_SYS */
#if 0
  mem_init(&_bss_end);
#endif
  FUNC8();

  FUNC10();

  FUNC9();

#if LWIP_SOCKET
  lwip_socket_init();
#endif /* LWIP_SOCKET */
  FUNC4();

#if LWIP_ARP
  etharp_init();

#endif /* LWIP_ARP */
#if LWIP_RAW
  raw_init();

#endif /* LWIP_RAW */
#if LWIP_UDP
  udp_init();

#endif /* LWIP_UDP */
#if LWIP_TCP
  tcp_init();

#endif /* LWIP_TCP */
#if LWIP_SNMP
  snmp_init();

#endif /* LWIP_SNMP */
#if LWIP_AUTOIP
  autoip_init();

#endif /* LWIP_AUTOIP */
#if LWIP_IGMP
  igmp_init();

#endif /* LWIP_IGMP */
#if LWIP_DNS
  dns_init();

#endif /* LWIP_DNS */

#if LWIP_TIMERS
  sys_timeouts_init();
#endif /* LWIP_TIMERS */
}