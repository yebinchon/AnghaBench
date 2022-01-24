#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint8_t ;
struct TYPE_6__ {int RDTR; } ;
typedef  TYPE_1__ CAN_FIFOMailBox_TypeDef ;

/* Variables and functions */
 unsigned int BUS_MAX ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 unsigned int can_fwd_errs ; 
 int* can_num_lookup ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * can_queues ; 
 unsigned int gmlan_send_errs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

void FUNC5(CAN_FIFOMailBox_TypeDef *to_push, uint8_t bus_number) {
  if (FUNC4(to_push) != 0) {
    if (bus_number < BUS_MAX) {
      // add CAN packet to send queue
      // bus number isn't passed through
      to_push->RDTR &= 0xF;
      if ((bus_number == 3U) && (can_num_lookup[3] == 0xFFU)) {
        gmlan_send_errs += FUNC1(to_push) ? 0U : 1U;
      } else {
        can_fwd_errs += FUNC2(can_queues[bus_number], to_push) ? 0U : 1U;
        FUNC3(FUNC0(bus_number));
      }
    }
  }
}