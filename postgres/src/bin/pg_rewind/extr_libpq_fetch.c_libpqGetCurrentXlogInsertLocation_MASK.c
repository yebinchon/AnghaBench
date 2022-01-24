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
typedef  int uint32 ;
typedef  int XLogRecPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char*,char*,int*,int*) ; 

XLogRecPtr
FUNC4(void)
{
	XLogRecPtr	result;
	uint32		hi;
	uint32		lo;
	char	   *val;

	val = FUNC2("SELECT pg_current_wal_insert_lsn()");

	if (FUNC3(val, "%X/%X", &hi, &lo) != 2)
		FUNC0("unrecognized result \"%s\" for current WAL insert location", val);

	result = ((uint64) hi) << 32 | lo;

	FUNC1(val);

	return result;
}