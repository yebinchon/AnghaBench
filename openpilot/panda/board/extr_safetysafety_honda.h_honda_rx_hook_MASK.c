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
typedef  int /*<<< orphan*/  CAN_FIFOMailBox_TypeDef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int HONDA_GAS_INTERCEPTOR_THRESHOLD ; 
 int controls_allowed ; 
 int gas_interceptor_detected ; 
 int gas_interceptor_prev ; 
 scalar_t__ honda_alt_brake_msg ; 
 int honda_brake ; 
 int honda_brake_pressed_prev ; 
 int honda_fwd_brake ; 
 int honda_gas_prev ; 
 int honda_moving ; 
 scalar_t__ long_controls_allowed ; 

__attribute__((used)) static void FUNC5(CAN_FIFOMailBox_TypeDef *to_push) {

  int addr = FUNC0(to_push);
  int len = FUNC4(to_push);
  int bus = FUNC1(to_push);

  // sample speed
  if (addr == 0x158) {
    // first 2 bytes
    honda_moving = FUNC2(to_push, 0) | FUNC2(to_push, 1);
  }

  // state machine to enter and exit controls
  // 0x1A6 for the ILX, 0x296 for the Civic Touring
  if ((addr == 0x1A6) || (addr == 0x296)) {
    int button = (FUNC2(to_push, 0) & 0xE0) >> 5;
    switch (button) {
      case 2:  // cancel
        controls_allowed = 0;
        break;
      case 3:  // set
      case 4:  // resume
        controls_allowed = 1;
        break;
      default:
        break; // any other button is irrelevant
    }
  }

  // user brake signal on 0x17C reports applied brake from computer brake on accord
  // and crv, which prevents the usual brake safety from working correctly. these
  // cars have a signal on 0x1BE which only detects user's brake being applied so
  // in these cases, this is used instead.
  // most hondas: 0x17C bit 53
  // accord, crv: 0x1BE bit 4
  // exit controls on rising edge of brake press or on brake press when speed > 0
  bool is_user_brake_msg = honda_alt_brake_msg ? ((addr) == 0x1BE) : ((addr) == 0x17C);
  if (is_user_brake_msg) {
    bool brake_pressed = honda_alt_brake_msg ? (FUNC2((to_push), 0) & 0x10) : (FUNC2((to_push), 6) & 0x20);
    if (brake_pressed && (!(honda_brake_pressed_prev) || honda_moving)) {
      controls_allowed = 0;
    }
    honda_brake_pressed_prev = brake_pressed;
  }

  // exit controls on rising edge of gas press if interceptor (0x201 w/ len = 6)
  // length check because bosch hardware also uses this id (0x201 w/ len = 8)
  if ((addr == 0x201) && (len == 6)) {
    gas_interceptor_detected = 1;
    int gas_interceptor = FUNC3(to_push);
    if ((gas_interceptor > HONDA_GAS_INTERCEPTOR_THRESHOLD) &&
        (gas_interceptor_prev <= HONDA_GAS_INTERCEPTOR_THRESHOLD) &&
        long_controls_allowed) {
      controls_allowed = 0;
    }
    gas_interceptor_prev = gas_interceptor;
  }

  // exit controls on rising edge of gas press if no interceptor
  if (!gas_interceptor_detected) {
    if (addr == 0x17C) {
      int gas = FUNC2(to_push, 0);
      if (gas && !(honda_gas_prev) && long_controls_allowed) {
        controls_allowed = 0;
      }
      honda_gas_prev = gas;
    }
  }
  if ((bus == 2) && (addr == 0x1FA)) {
    bool honda_stock_aeb = FUNC2(to_push, 3) & 0x20;
    int honda_stock_brake = (FUNC2(to_push, 0) << 2) + ((FUNC2(to_push, 1) >> 6) & 0x3);

    // Forward AEB when stock braking is higher than openpilot braking
    // only stop forwarding when AEB event is over
    if (!honda_stock_aeb) {
      honda_fwd_brake = false;
    } else if (honda_stock_brake >= honda_brake) {
      honda_fwd_brake = true;
    } else {
      // Leave honda forward brake as is
    }
  }
}