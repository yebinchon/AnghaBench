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
#define  BASE 131 
#define  GAME 130 
#define  SYMB 129 
#define  VIM 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 

void FUNC2(uint32_t state) {
  switch (FUNC0(state)) {
    case BASE:
      // purple
      FUNC1(210, 255, 20);
      break;
    case SYMB:
      // blue
      FUNC1(191, 255, 20);
      break;
    case VIM:
      // green
      FUNC1(85, 255, 20);
      break;
    case GAME:
      // red
      FUNC1(0, 255, 20);
      break;
  }
}