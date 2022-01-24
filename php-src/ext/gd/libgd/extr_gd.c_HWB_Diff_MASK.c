#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ H; float W; float B; } ;
typedef  int /*<<< orphan*/  RGBType ;
typedef  TYPE_1__ HWBType ;

/* Variables and functions */
 scalar_t__ HWB_UNDEFINED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 float FUNC2 (scalar_t__) ; 

__attribute__((used)) static float FUNC3 (int r1, int g1, int b1, int r2, int g2, int b2)
{
	RGBType RGB1, RGB2;
	HWBType HWB1, HWB2;
	float diff;

	FUNC1(RGB1, r1, g1, b1);
	FUNC1(RGB2, r2, g2, b2);

	FUNC0(RGB1, &HWB1);
	FUNC0(RGB2, &HWB2);

	/*
	 * I made this bit up; it seems to produce OK results, and it is certainly
	 * more visually correct than the current RGB metric. (PJW)
	 */

	if ((HWB1.H == HWB_UNDEFINED) || (HWB2.H == HWB_UNDEFINED)) {
		diff = 0.0f;	/* Undefined hues always match... */
	} else {
		diff = FUNC2(HWB1.H - HWB2.H);
		if (diff > 3.0f) {
			diff = 6.0f - diff;	/* Remember, it's a colour circle */
		}
	}

	diff = diff * diff + (HWB1.W - HWB2.W) * (HWB1.W - HWB2.W) + (HWB1.B - HWB2.B) * (HWB1.B - HWB2.B);

	return diff;
}