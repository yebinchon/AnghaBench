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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CV_ARM_CPSR ; 
 int CV_ARM_NOREG ; 
 int CV_ARM_R0 ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 

__attribute__((used)) static unsigned FUNC1(unsigned regno, BOOL eh_frame)
{
    if (regno <= 15) return CV_ARM_R0 + regno;
    if (regno == 128) return CV_ARM_CPSR;

    FUNC0("Don't know how to map register %d\n", regno);
    return CV_ARM_NOREG;
}