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
 int /*<<< orphan*/  GPIOA ; 
 int /*<<< orphan*/  GPIOB ; 
 int /*<<< orphan*/  PAL_MODE_OUTPUT_PUSHPULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(uint8_t row){
  (void)row;
  switch (row) {
    case 0:
      FUNC1(GPIOB, 9, PAL_MODE_OUTPUT_PUSHPULL);
      FUNC0(GPIOB, 9);
      break;
    case 1:
      FUNC1(GPIOB, 8, PAL_MODE_OUTPUT_PUSHPULL);
      FUNC0(GPIOB, 8);
      break;
    case 2:
      FUNC1(GPIOB, 7, PAL_MODE_OUTPUT_PUSHPULL);
      FUNC0(GPIOB, 7);
      break;
    case 3:
      FUNC1(GPIOB, 6, PAL_MODE_OUTPUT_PUSHPULL);
      FUNC0(GPIOB, 6);
      break;
    case 4:
      FUNC1(GPIOB, 5, PAL_MODE_OUTPUT_PUSHPULL);
      FUNC0(GPIOB, 5);
      break;
    case 5:
      FUNC1(GPIOA, 4, PAL_MODE_OUTPUT_PUSHPULL);
      FUNC0(GPIOA, 4);
      break;
  }
}