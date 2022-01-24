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
#define  _EMOJI 130 
#define  _LEDCNTL 129 
#define  _TAPLAND 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 

uint32_t FUNC2(uint32_t state) {
    switch (FUNC0(state)) {
    case _TAPLAND:
        FUNC1(0, 16, 0); //green
        break;
    case _LEDCNTL:
        FUNC1(0, 0, 16); //blue
        break;
    case _EMOJI:
        FUNC1 (16, 0, 16); //purple
        break;

    default: //  for any other layers, or the default layer
        FUNC1 (16, 0, 16); //purple
        break;
    }
  return state;
}