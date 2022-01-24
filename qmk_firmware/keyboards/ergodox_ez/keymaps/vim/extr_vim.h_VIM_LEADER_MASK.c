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
typedef  int uint16_t ;

/* Variables and functions */
#define  KC_NO 134 
#define  VIM_C 133 
#define  VIM_CI 132 
#define  VIM_D 131 
#define  VIM_DI 130 
 int VIM_QUEUE ; 
#define  VIM_V 129 
#define  VIM_VI 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 

void FUNC1(uint16_t keycode) {
  VIM_QUEUE = keycode;
  switch(keycode) {
    case VIM_C: FUNC0("\e[32mc\e[0m"); break;
    case VIM_CI: FUNC0("\e[32mi\e[0m"); break;
    case VIM_D: FUNC0("\e[32md\e[0m"); break;
    case VIM_DI: FUNC0("\e[32mi\e[0m"); break;
    case VIM_V: FUNC0("\e[32mv\e[0m"); break;
    case VIM_VI: FUNC0("\e[32mi\e[0m"); break;
    case KC_NO: FUNC0("❎"); break;
  }
}