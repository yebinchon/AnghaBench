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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  ip_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLP_D2 ; 
#define  IP_LINK_DOWN 129 
#define  IP_LINK_UP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  g_mgr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(void) {
  static uint32_t old_ip = IP_LINK_DOWN;
  uint32_t ip = FUNC3();
  if (ip != old_ip) {
    switch (ip) {
      case IP_LINK_DOWN: {
        FUNC1("Link down.\r\n");
        FUNC0(CLP_D2, 0);
        break;
      }
      case IP_LINK_UP: {
        FUNC1("Link up.\r\n");
        FUNC0(CLP_D2, 0);
        break;
      }
      default: {
        FUNC1("IP: http://%s/\r\n", FUNC2((const ip_addr_t *) &ip));
        FUNC0(CLP_D2, CLP_D2);
        break;
      }
    }
    old_ip = ip;
  }

  FUNC4(&g_mgr, 0);
}