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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  msg_t ;

/* Variables and functions */
 int /*<<< orphan*/  I2CD1 ; 
 int /*<<< orphan*/  IS31_ADDR_DEFAULT ; 
 int /*<<< orphan*/  IS31_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * tx ; 

msg_t FUNC3(uint8_t page, uint8_t reg, uint8_t data) {
  FUNC2(page);
  tx[0] = reg;
  tx[1] = data;
  return FUNC1(&I2CD1, IS31_ADDR_DEFAULT, tx, 2, NULL, 0, FUNC0(IS31_TIMEOUT));
}