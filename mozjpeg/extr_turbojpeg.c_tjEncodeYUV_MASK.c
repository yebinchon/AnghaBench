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
typedef  int /*<<< orphan*/  tjhandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char*,int,int,int,int /*<<< orphan*/ ,unsigned char*,int,int) ; 

int FUNC2(tjhandle handle, unsigned char *srcBuf, int width,
                          int pitch, int height, int pixelSize,
                          unsigned char *dstBuf, int subsamp, int flags)
{
	return FUNC1(handle, srcBuf, width, pitch, height,
                      FUNC0(pixelSize, flags), dstBuf, subsamp,
                      flags);
}