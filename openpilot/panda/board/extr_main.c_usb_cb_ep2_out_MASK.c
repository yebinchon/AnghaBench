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
typedef  unsigned int uint8_t ;
typedef  int /*<<< orphan*/  uart_ring ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int,unsigned int*,int) ; 

void FUNC4(void *usbdata, int len, bool hardwired) {
  FUNC0(hardwired);
  uint8_t *usbdata8 = (uint8_t *)usbdata;
  uart_ring *ur = FUNC1(usbdata8[0]);
  if ((len != 0) && (ur != NULL)) {
    if ((usbdata8[0] < 2U) || FUNC3(usbdata8[0] - 2U, &usbdata8[1], len - 1)) {
      for (int i = 1; i < len; i++) {
        while (!FUNC2(ur, usbdata8[i])) {
          // wait
        }
      }
    }
  }
}