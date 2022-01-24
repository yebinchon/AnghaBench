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
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static int FUNC2(int bus_num, CAN_FIFOMailBox_TypeDef *to_fwd) {
  int bus_fwd = -1;
  int bus_rdr_cam = (FUNC1()) ? 2 : 1;  // radar bus, camera side
  int bus_rdr_car = (FUNC1()) ? 0 : 2;  // radar bus, car side

  if (bus_num == bus_rdr_car) {
    bus_fwd = bus_rdr_cam;
  }
  if (bus_num == bus_rdr_cam)  {
    int addr = FUNC0(to_fwd);
    int is_lkas_msg = (addr == 0xE4) || (addr == 0x33D);
    if (!is_lkas_msg) {
      bus_fwd = bus_rdr_car;
    }
  }
  return bus_fwd;
}