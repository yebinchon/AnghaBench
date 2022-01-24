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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  USB_Setup_TypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int /*<<< orphan*/ ) ; 

int FUNC3(uint8_t *data, int len, uint8_t *data_out) {
  FUNC0(len);
  int resp_len = 0;
  switch (data[0]) {
    case 0:
      // control transfer
      resp_len = FUNC1((USB_Setup_TypeDef *)(data+4), data_out, 0);
      break;
    case 2:
      // ep 2, flash!
      FUNC2(data+4, data[2], 0);
      break;
  }
  return resp_len;
}