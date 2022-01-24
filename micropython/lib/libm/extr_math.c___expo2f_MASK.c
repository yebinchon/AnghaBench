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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float,int) ; 
 float FUNC1 (scalar_t__) ; 
 int k ; 
 scalar_t__ kln2 ; 

float FUNC2(float x)
{
	float scale;

	/* note that k is odd and scale*scale overflows */
	FUNC0(scale, (uint32_t)(0x7f + k/2) << 23);
	/* exp(x - k ln2) * 2**(k-1) */
	return FUNC1(x - kln2) * scale * scale;
}