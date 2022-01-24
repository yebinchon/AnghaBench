#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  cutoff_xid; } ;
typedef  TYPE_1__ xl_heap_visible ;
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGBUF_NO_IMAGE ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_HEAP2_ID ; 
 int /*<<< orphan*/  SizeOfHeapVisible ; 
 int /*<<< orphan*/  XLOG_HEAP2_VISIBLE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

XLogRecPtr
FUNC7(RelFileNode rnode, Buffer heap_buffer, Buffer vm_buffer,
				 TransactionId cutoff_xid, uint8 vmflags)
{
	xl_heap_visible xlrec;
	XLogRecPtr	recptr;
	uint8		flags;

	FUNC0(FUNC1(heap_buffer));
	FUNC0(FUNC1(vm_buffer));

	xlrec.cutoff_xid = cutoff_xid;
	xlrec.flags = vmflags;
	FUNC2();
	FUNC6((char *) &xlrec, SizeOfHeapVisible);

	FUNC5(0, vm_buffer, 0);

	flags = REGBUF_STANDARD;
	if (!FUNC3())
		flags |= REGBUF_NO_IMAGE;
	FUNC5(1, heap_buffer, flags);

	recptr = FUNC4(RM_HEAP2_ID, XLOG_HEAP2_VISIBLE);

	return recptr;
}