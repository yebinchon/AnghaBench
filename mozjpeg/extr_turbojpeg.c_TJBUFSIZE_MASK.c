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
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

unsigned long FUNC2(int width, int height)
{
	unsigned long retval=0;

	if(width<1 || height<1)
    FUNC1("TJBUFSIZE(): Invalid argument");

	/* This allows for rare corner cases in which a JPEG image can actually be
	   larger than the uncompressed input (we wouldn't mention it if it hadn't
	   happened before.) */
	retval=FUNC0(width, 16) * FUNC0(height, 16) * 6 + 2048;

	bailout:
	return retval;
}