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
 scalar_t__* IMA_IndexTable ; 
 unsigned int* IMA_StepTable ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 

__attribute__((used)) static inline void FUNC2(unsigned char code, int* stepIndex, int* sample)
{
    unsigned step;
    int diff;

    code &= 0x0F;

    step = IMA_StepTable[*stepIndex];
    diff = step >> 3;
    if (code & 1) diff += step >> 2;
    if (code & 2) diff += step >> 1;
    if (code & 4) diff += step;
    if (code & 8)	*sample -= diff;
    else 		*sample += diff;
    FUNC0(sample);
    *stepIndex += IMA_IndexTable[code];
    FUNC1(stepIndex);
}