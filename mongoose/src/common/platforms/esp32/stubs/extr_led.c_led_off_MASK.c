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

/* Variables and functions */
 int /*<<< orphan*/  GPIO_OUT1_W1TC_REG ; 
 int /*<<< orphan*/  GPIO_OUT_W1TC_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void FUNC1(int io) {
  if (io < 32) {
    FUNC0(GPIO_OUT_W1TC_REG, 1 << io);
  } else {
    FUNC0(GPIO_OUT1_W1TC_REG, 1 << (io - 32));
  }
}