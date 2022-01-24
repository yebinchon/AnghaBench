#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_6__ {int ReadRecPtr; } ;
typedef  TYPE_1__ XLogReaderState ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ StringInfoData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	XLogReaderState *record = (XLogReaderState *) arg;
	StringInfoData buf;

	FUNC1(&buf);
	FUNC3(&buf, record);

	/* translator: %s is a WAL record description */
	FUNC0("WAL redo at %X/%X for %s",
			   (uint32) (record->ReadRecPtr >> 32),
			   (uint32) record->ReadRecPtr,
			   buf.data);

	FUNC2(buf.data);
}