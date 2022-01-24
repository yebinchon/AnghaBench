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
typedef  int /*<<< orphan*/  VTEncodeInfoFlags ;
typedef  int /*<<< orphan*/  OSStatus ;
typedef  void* CVPixelBufferRef ;
typedef  void* CMSimpleQueueRef ;
typedef  int /*<<< orphan*/ * CMSampleBufferRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(void *data, void *source, OSStatus status,
			     VTEncodeInfoFlags info_flags,
			     CMSampleBufferRef buffer)
{
	FUNC3(status);
	FUNC3(info_flags);

	CMSimpleQueueRef queue = data;
	CVPixelBufferRef pixbuf = source;
	if (buffer != NULL) {
		FUNC1(buffer);
		FUNC2(queue, buffer);
	}
	FUNC0(pixbuf);
}