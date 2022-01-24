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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_can_mode ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_CAN_LIVE ; 
 int /*<<< orphan*/  ALL_CAN_SILENT ; 
 int /*<<< orphan*/  CAN_MODE_NORMAL ; 
 int /*<<< orphan*/  CAN_MODE_OBD_CAN2 ; 
#define  SAFETY_ELM327 129 
#define  SAFETY_NOOUTPUT 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  can_silent ; 
 TYPE_1__* current_board ; 
 unsigned int heartbeat_counter ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(uint16_t mode, int16_t param) {
  int err = FUNC3(mode, param);
  if (err == -1) {
    FUNC2("Error: safety set mode failed\n");
  } else {
    switch (mode) {
        case SAFETY_NOOUTPUT:
          FUNC4(false);
          if(FUNC0()){
            current_board->set_can_mode(CAN_MODE_NORMAL);
          }
          can_silent = ALL_CAN_SILENT;
          break;
        case SAFETY_ELM327:
          FUNC4(false);
          heartbeat_counter = 0U;
          if(FUNC0()){
            current_board->set_can_mode(CAN_MODE_OBD_CAN2);
          }
          can_silent = ALL_CAN_LIVE;
          break;
        default:
          FUNC4(true);
          heartbeat_counter = 0U;
          if(FUNC0()){
            current_board->set_can_mode(CAN_MODE_NORMAL);
          }
          can_silent = ALL_CAN_LIVE;
          break;
      }
    FUNC1();
  }
}