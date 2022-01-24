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

/* Variables and functions */
 int ALL_HIGH ; 
 int /*<<< orphan*/  IC1 ; 
 int /*<<< orphan*/  PCA9555_PORT0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(uint8_t row) {
  // All rows are on the same IC and port
  uint8_t mask = 1 << row;

  // set active row low  : 0
  // set other rows hi-Z : 1
  FUNC0(IC1, PCA9555_PORT0, ALL_HIGH & (~mask));
}