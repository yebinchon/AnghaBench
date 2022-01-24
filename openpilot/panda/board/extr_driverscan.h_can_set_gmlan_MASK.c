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
typedef  int uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_can_mode ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_MODE_GMLAN_CAN2 ; 
 int /*<<< orphan*/  CAN_MODE_GMLAN_CAN3 ; 
 int /*<<< orphan*/  CAN_MODE_NORMAL ; 
 scalar_t__ FUNC0 () ; 
 int* bus_lookup ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int* can_num_lookup ; 
 TYPE_1__* current_board ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(uint8_t bus) {
  if(FUNC0()){
    // first, disable GMLAN on prev bus
    uint8_t prev_bus = can_num_lookup[3];
    if (bus != prev_bus) {
      switch (prev_bus) {
        case 1:
        case 2:
          FUNC3("Disable GMLAN on CAN");
          FUNC2(prev_bus + 1U);
          FUNC3("\n");
          current_board->set_can_mode(CAN_MODE_NORMAL);
          bus_lookup[prev_bus] = prev_bus;
          can_num_lookup[prev_bus] = prev_bus;
          can_num_lookup[3] = -1;
          FUNC1(prev_bus);
          break;
        default:
          // GMLAN was not set on either BUS 1 or 2
          break;
      }
    }

    // now enable GMLAN on the new bus
    switch (bus) {
      case 1:
      case 2:
        FUNC3("Enable GMLAN on CAN");
        FUNC2(bus + 1U);
        FUNC3("\n");
        current_board->set_can_mode((bus == 1U) ? CAN_MODE_GMLAN_CAN2 : CAN_MODE_GMLAN_CAN3);
        bus_lookup[bus] = 3;
        can_num_lookup[bus] = -1;
        can_num_lookup[3] = bus;
        FUNC1(bus);
        break;
      case 0xFF:  //-1 unsigned
        break;
      default:
        FUNC3("GMLAN can only be set on CAN2 or CAN3\n");
        break;
    }
  } else {
    FUNC3("GMLAN not available on black panda\n");
  }
}