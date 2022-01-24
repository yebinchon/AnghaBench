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
 int /*<<< orphan*/  C_BLU ; 
 int /*<<< orphan*/  C_GRN ; 
 int /*<<< orphan*/  C_ORG ; 
 int /*<<< orphan*/  C_PRP ; 
 int /*<<< orphan*/  C_RED ; 
 int /*<<< orphan*/  C_YAN ; 
#define  VIM_C 143 
#define  VIM_CI 142 
#define  VIM_D 141 
#define  VIM_DI 140 
#define  VIM_G 139 
#define  VIM_START 138 
#define  VIM_V 137 
#define  VIM_VI 136 
#define  VIM_VS 135 
#define  VIM_Y 134 
#define  _ADJUST 133 
#define  _CMD 132 
#define  _LOWER 131 
#define  _MOUSE 130 
#define  _MOVE 129 
#define  _RAISE 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  vstate ; 

void FUNC3(void) {
  if (FUNC2() == 1) {
    switch (FUNC0(layer_state)) {
    case _RAISE:
      FUNC1(C_BLU, C_GRN);
      break;
    case _LOWER:
      FUNC1(C_BLU, C_RED);
      break;
    case _ADJUST:
      FUNC1(C_BLU, C_PRP);
      break;
    case _MOVE:
      FUNC1(C_RED, C_PRP);
      break;
    case _MOUSE:
      FUNC1(C_RED, C_GRN);
      break;
    case _CMD:
      switch(vstate) {
        case VIM_V:
        case VIM_VI:
        case VIM_VS:
          FUNC1(C_GRN, C_YAN);
          break;
        case VIM_C:
        case VIM_CI:
          FUNC1(C_GRN, C_ORG);
          break;
        case VIM_D:
        case VIM_DI:
          FUNC1(C_GRN, C_RED);
          break;
        case VIM_G:
          FUNC1(C_GRN, C_BLU);
          break;
        case VIM_Y:
          FUNC1(C_GRN, C_PRP);
          break;
        case VIM_START:
        default:
          FUNC1(C_GRN, C_GRN);
          break;
      }
      break;
    default: //  for any other layers, or the default layer
      FUNC1(C_YAN, C_YAN);
      break;
    }
  }
}