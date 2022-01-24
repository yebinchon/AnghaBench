#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  xlog_seg_size; } ;
typedef  TYPE_1__ ControlFileData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t PG_CONTROL_FILE_SIZE ; 
 int /*<<< orphan*/  WalSegSz ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 

__attribute__((used)) static void
FUNC5(ControlFileData *ControlFile, char *src, size_t size)
{
	if (size != PG_CONTROL_FILE_SIZE)
		FUNC4("unexpected control file size %d, expected %d",
				 (int) size, PG_CONTROL_FILE_SIZE);

	FUNC2(ControlFile, src, sizeof(ControlFileData));

	/* set and validate WalSegSz */
	WalSegSz = ControlFile->xlog_seg_size;

	if (!FUNC0(WalSegSz))
		FUNC4(FUNC3("WAL segment size must be a power of two between 1 MB and 1 GB, but the control file specifies %d byte",
						  "WAL segment size must be a power of two between 1 MB and 1 GB, but the control file specifies %d bytes",
						  WalSegSz),
				 WalSegSz);

	/* Additional checks on control file */
	FUNC1(ControlFile);
}