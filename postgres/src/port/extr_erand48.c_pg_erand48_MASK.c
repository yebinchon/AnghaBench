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
typedef  int uint64 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (unsigned short*) ; 
 double FUNC2 (double,int) ; 

double
FUNC3(unsigned short xseed[3])
{
	uint64		x = FUNC1(xseed);

	return FUNC2((double) (x & FUNC0(0xFFFFFFFFFFFF)), -48);
}