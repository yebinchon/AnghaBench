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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOA ; 
#define  _FNONE 129 
#define  _FNTWO 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

uint32_t FUNC3(uint32_t state) {
  switch (FUNC0(state)) {
  case _FNONE:
    FUNC2(GPIOA, 0);  //OFF Color A
    FUNC1(GPIOA, 1); //ON Color B
    break;
  case _FNTWO:
    FUNC1(GPIOA, 0); //ON Color A
    FUNC1(GPIOA, 1);  //ON Color B
    break;
  default: //  for any other layers, or the default layer
    FUNC1(GPIOA, 0); //ON Color A
    FUNC2(GPIOA, 1);  //OFF Color B
    break;
    }
  return state;
}