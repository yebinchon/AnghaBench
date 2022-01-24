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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 scalar_t__ LSBFIRST ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 

uint8_t FUNC2(uint8_t dataPin, uint8_t clockPin, uint8_t bitOrder)
{
        if (bitOrder == LSBFIRST) {
                return FUNC0(dataPin, clockPin);
        } else {
                return FUNC1(dataPin, clockPin);
        }
}