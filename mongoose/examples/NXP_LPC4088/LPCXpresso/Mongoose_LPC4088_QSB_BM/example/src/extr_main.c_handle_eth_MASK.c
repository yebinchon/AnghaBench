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
typedef  int uint32_t ;
struct netif {TYPE_1__* dhcp; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ DHCP_BOUND ; 
 int /*<<< orphan*/  LPC_ETHERNET ; 
 int PHY_LINK_CHANGED ; 
 int PHY_LINK_CONNECTED ; 
 int PHY_LINK_FULLDUPLX ; 
 int PHY_LINK_SPEED100 ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct netif*) ; 
 int /*<<< orphan*/  FUNC7 (struct netif*) ; 
 int /*<<< orphan*/  FUNC8 (struct netif*) ; 
 int /*<<< orphan*/  FUNC9 (struct netif*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

void FUNC11(struct netif *eth_if) {
  /* PHY link status. */
  uint32_t status = FUNC5();

  if (status & PHY_LINK_CHANGED) {
    if (status & PHY_LINK_CONNECTED) {
      FUNC0(0, true);

      if (status & PHY_LINK_SPEED100) {
        FUNC1(LPC_ETHERNET);
      } else {
        FUNC2(LPC_ETHERNET);
      }
      if (status & PHY_LINK_FULLDUPLX) {
        FUNC3(LPC_ETHERNET);
      } else {
        FUNC4(LPC_ETHERNET);
      }

      FUNC9(eth_if);
      FUNC10("Link up\r\n");
    } else {
      FUNC0(0, false);
      FUNC8(eth_if);
      FUNC10("Link down\r\n");
    }
  }

  FUNC0(1, (eth_if->dhcp->state == DHCP_BOUND));

  /* Handle packets as part of this loop, not in the IRQ handler */
  FUNC6(eth_if);

  /* Free TX buffers that are done sending */
  FUNC7(eth_if);
}