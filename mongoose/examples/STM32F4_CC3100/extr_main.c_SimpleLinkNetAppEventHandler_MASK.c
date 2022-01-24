#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int Event; } ;
typedef  TYPE_1__ SlNetAppEvent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
#define  SL_NETAPP_IPV4_IPACQUIRED_EVENT 128 
 int /*<<< orphan*/  ssConnectedWLAN ; 
 int /*<<< orphan*/  state ; 

void FUNC1(SlNetAppEvent_t *pNetAppEvent) {
  switch (pNetAppEvent->Event) {
    case SL_NETAPP_IPV4_IPACQUIRED_EVENT:
      FUNC0("Got IP\r\n");
      state = ssConnectedWLAN;
      break;
    default:
      FUNC0("Got NetApp Event: %d\r\n", pNetAppEvent->Event);
      break;
  }
}