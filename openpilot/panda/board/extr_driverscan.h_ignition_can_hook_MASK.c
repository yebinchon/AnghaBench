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
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int ignition_can ; 

void FUNC5(CAN_FIFOMailBox_TypeDef *to_push) {

  int bus = FUNC1(to_push);
  int addr = FUNC0(to_push);
  int len = FUNC4(to_push);

  if (bus == 0) {
    // GM exception
    if ((addr == 0x1F1) && (len == 8)) {
      //Bit 5 is ignition "on"
      ignition_can = (FUNC2(to_push, 0) & 0x20) != 0;
    }
    // Tesla exception
    if ((addr == 0x348) && (len == 8)) {
      // GTW_status
      ignition_can = (FUNC2(to_push, 0) & 0x1) != 0;
    }
    // Cadillac exception
    if ((addr == 0x160) && (len == 5)) {
      // this message isn't all zeros when ignition is on
      ignition_can = FUNC3(to_push) != 0;
    }
    // VW exception
    if ((addr == 0x3C0) && (len == 4)) {
     // VW Terminal 15 (ignition-on) state
     ignition_can  = (FUNC2(to_push, 2) & 0x2) != 0;
    }
  }
}