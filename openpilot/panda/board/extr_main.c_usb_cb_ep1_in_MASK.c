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
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  can_rx_q ; 

int FUNC3(void *usbdata, int len, bool hardwired) {
  FUNC1(hardwired);
  CAN_FIFOMailBox_TypeDef *reply = (CAN_FIFOMailBox_TypeDef *)usbdata;
  int ilen = 0;
  while (ilen < FUNC0(len/0x10, 4) && FUNC2(&can_rx_q, &reply[ilen])) {
    ilen++;
  }
  return ilen*0x10;
}