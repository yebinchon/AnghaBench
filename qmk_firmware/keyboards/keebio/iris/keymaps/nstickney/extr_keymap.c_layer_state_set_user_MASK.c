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
#define  FCTN 131 
#define  NUMP 130 
#define  SYMB 129 
#define  SYSH 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 

uint32_t FUNC2(uint32_t state) {
	switch (FUNC0(state)) {
		case FCTN: FUNC1(96, 255, 255); break;
		case NUMP: FUNC1(162, 255, 255); break;
		case SYMB:
		case SYSH: FUNC1(227, 255, 255); break;
		default: FUNC1(13, 255, 255); break;
	}
	return state;
}