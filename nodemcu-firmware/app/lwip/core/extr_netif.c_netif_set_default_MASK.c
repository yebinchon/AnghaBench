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
struct netif {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETIF_DEBUG ; 
 struct netif* netif_default ; 
 int /*<<< orphan*/  FUNC1 (int,struct netif*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct netif*) ; 

void
FUNC3(struct netif *netif)
{
  if (netif == NULL) {
    /* remove default route */
    FUNC1(1, netif);
  } else {
    /* install default route */
    FUNC2(1, netif);
  }
  netif_default = netif;
  FUNC0(NETIF_DEBUG, ("netif: setting default interface %c%c\n",
           netif ? netif->name[0] : '\'', netif ? netif->name[1] : '\''));
}