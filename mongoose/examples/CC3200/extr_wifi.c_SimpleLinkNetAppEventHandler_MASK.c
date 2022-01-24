#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ip; } ;
struct TYPE_5__ {TYPE_3__ ipAcquiredV4; } ;
struct TYPE_6__ {scalar_t__ Event; TYPE_1__ EventData; } ;
typedef  TYPE_2__ SlNetAppEvent_t ;
typedef  TYPE_3__ SlIpV4AcquiredAsync_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LL_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MCU_RED_LED_GPIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ SL_NETAPP_IPV4_IPACQUIRED_EVENT ; 
 scalar_t__ SL_NETAPP_IP_LEASED_EVENT ; 

void FUNC3(SlNetAppEvent_t *e) {
  if (e->Event == SL_NETAPP_IPV4_IPACQUIRED_EVENT) {
    SlIpV4AcquiredAsync_t *ed = &e->EventData.ipAcquiredV4;
    FUNC1(LL_INFO, ("IP acquired: %lu.%lu.%lu.%lu", FUNC2(ed->ip, 3),
                  FUNC2(ed->ip, 2), FUNC2(ed->ip, 1),
                  FUNC2(ed->ip, 0)));
    FUNC0(MCU_RED_LED_GPIO);
  } else if (e->Event == SL_NETAPP_IP_LEASED_EVENT) {
    FUNC1(LL_INFO, ("IP leased"));
  } else {
    FUNC1(LL_INFO, ("NetApp event %d", (int) e->Event));
  }
}