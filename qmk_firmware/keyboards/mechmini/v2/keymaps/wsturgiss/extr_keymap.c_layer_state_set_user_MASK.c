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
#define  lower 129 
#define  raise 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 

uint32_t FUNC3(uint32_t state) {
    switch (FUNC0(state)) {
    case raise:
        FUNC1(1);
        FUNC2(0xc7, 0x00, 0xf4);
        break;
    case lower:
        FUNC1(1);
        FUNC2(0x00, 0xa3, 0x0d);
        break;
    default: // for any other layers, or the default layer
        FUNC1(5);
        FUNC2(0xFF, 0xB6, 0x00);
        break;
    }
  return state;
}