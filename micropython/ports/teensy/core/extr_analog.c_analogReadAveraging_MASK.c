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
 scalar_t__ ADC0_SC3 ; 
 scalar_t__ ADC_SC3_AVGE ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned int analog_num_average ; 
 scalar_t__ calibrating ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(unsigned int num)
{

	if (calibrating) FUNC1();
	if (num <= 1) {
		num = 0;
		ADC0_SC3 = 0;
	} else if (num <= 4) {
		num = 4;
		ADC0_SC3 = ADC_SC3_AVGE + FUNC0(0);
	} else if (num <= 8) {
		num = 8;
		ADC0_SC3 = ADC_SC3_AVGE + FUNC0(1);
	} else if (num <= 16) {
		num = 16;
		ADC0_SC3 = ADC_SC3_AVGE + FUNC0(2);
	} else {
		num = 32;
		ADC0_SC3 = ADC_SC3_AVGE + FUNC0(3);
	}
	analog_num_average = num;
}