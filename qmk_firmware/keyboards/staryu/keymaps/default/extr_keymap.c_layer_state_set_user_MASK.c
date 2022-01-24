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
#define  _LAYER0 132 
#define  _LAYER1 131 
#define  _LAYER2 130 
#define  _LAYER3 129 
#define  _LAYER4 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

uint32_t FUNC6(uint32_t state) {
  switch (FUNC0(state)) {
    case _LAYER1:
        FUNC1();
        break;
    case _LAYER2:
        FUNC2();
        break;
    case _LAYER3:
        FUNC4();
        break;
    case _LAYER4:
        FUNC3();
        break;
    case _LAYER0:
    default: //  for any other layers, or the default layer
        FUNC5();
        break;
    }
  return state;
}