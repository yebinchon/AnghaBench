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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 

uint32_t FUNC2(uint32_t state) {
  switch (FUNC0(state)) {
    case 0:
      FUNC1 (0xFF, 0x00, 0x00);
      break;
    case 1:
      FUNC1 (0x00, 0xFF, 0x00);
      break;
    case 2:
      FUNC1 (0x00, 0x00, 0xFF);
      break;
    case 3:
      FUNC1 (0xFF, 0xFF, 0xFF);
      break;
    case 4:
      FUNC1 (0xFF, 0x00, 0xFF);
      break;
    default: //  for any other layers, or the default layer
      FUNC1 (0xFF, 0x00, 0x00);
      break;
    }
  return state;
}