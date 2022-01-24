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
 int /*<<< orphan*/  FUNC0 (int,int) ; 

void FUNC1(uint8_t layer) {
	
	switch (layer)
	{
		case 0:
			FUNC0(0, true);
			FUNC0(1, false);
			FUNC0(2, false);
			break;
		case 1:
			FUNC0(0, true);
			FUNC0(1, true);
			FUNC0(2, false);
			break;
		case 2:
			FUNC0(0, true);
			FUNC0(1, true);
			FUNC0(2, true);
			break;
		case 3:
			FUNC0(0, false);
			FUNC0(1, true);
			FUNC0(2, true);
			break;
		case 4:
			FUNC0(0, false);
			FUNC0(1, false);
			FUNC0(2, true);
			break;
		default:
			FUNC0(0, true);
			FUNC0(1, false);
			FUNC0(2, true);
			break;
	}
	
}