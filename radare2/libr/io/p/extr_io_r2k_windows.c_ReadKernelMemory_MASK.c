#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_3__ {int /*<<< orphan*/  QuadPart; } ;
struct TYPE_4__ {int len; TYPE_1__ address; } ;
typedef  TYPE_2__* PPA ;
typedef  int /*<<< orphan*/  PA ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IOCTL_READ_KERNEL_MEM ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ gHandleDriver ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,float,int) ; 

int FUNC6 (ut64 address, ut8 *buf, int len) {
	DWORD ret = -1, bRead = 0;
	LPVOID lpBuffer = NULL;
	int bufsize;
	PPA p;
	FUNC5 (buf, '\xff', len);
	if(gHandleDriver) {
		bufsize = sizeof (PA) + len;
		if (!(lpBuffer = FUNC3 (bufsize))) {
			FUNC1 ("[r2k] ReadKernelMemory: Error can't allocate %i bytes of memory.\n", bufsize);
			return -1;
		}
		p = (PPA)lpBuffer;
		p->address.QuadPart = address;
		p->len = len;
		if (FUNC0 (gHandleDriver, IOCTL_READ_KERNEL_MEM, lpBuffer, bufsize, lpBuffer, bufsize, &bRead, NULL)) {
			FUNC4 (buf, lpBuffer, len);
			ret = len;
		} else {
			ret = -1;
			//eprintf("[r2k] ReadKernelMemory: Error IOCTL_READ_KERNEL_MEM.\n");
		}
		FUNC2 (lpBuffer);
	} else {
		FUNC1 ("Driver not initialized.\n");
	}
	return ret;
}