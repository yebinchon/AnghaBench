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
typedef  int uint32 ;
typedef  int /*<<< orphan*/  str ;
typedef  int XLogRecPtr ;
typedef  int TimeLineID ;
typedef  int /*<<< orphan*/  StringInfoData ;
typedef  scalar_t__ Size ;

/* Variables and functions */
 scalar_t__ INT8OID ; 
 int MAXFNAMELEN ; 
 scalar_t__ TEXTOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (char*,int,char*,int,...) ; 

__attribute__((used)) static void
FUNC8(XLogRecPtr ptr, TimeLineID tli)
{
	StringInfoData buf;
	char		str[MAXFNAMELEN];
	Size		len;

	FUNC0(&buf, 'T'); /* RowDescription */
	FUNC4(&buf, 2);		/* 2 fields */

	/* Field headers */
	FUNC6(&buf, "recptr");
	FUNC5(&buf, 0);		/* table oid */
	FUNC4(&buf, 0);		/* attnum */
	FUNC5(&buf, TEXTOID);	/* type oid */
	FUNC4(&buf, -1);
	FUNC5(&buf, 0);
	FUNC4(&buf, 0);

	FUNC6(&buf, "tli");
	FUNC5(&buf, 0);		/* table oid */
	FUNC4(&buf, 0);		/* attnum */

	/*
	 * int8 may seem like a surprising data type for this, but in theory int4
	 * would not be wide enough for this, as TimeLineID is unsigned.
	 */
	FUNC5(&buf, INT8OID);	/* type oid */
	FUNC4(&buf, -1);
	FUNC5(&buf, 0);
	FUNC4(&buf, 0);
	FUNC1(&buf);

	/* Data row */
	FUNC0(&buf, 'D');
	FUNC4(&buf, 2);		/* number of columns */

	len = FUNC7(str, sizeof(str),
				   "%X/%X", (uint32) (ptr >> 32), (uint32) ptr);
	FUNC5(&buf, len);
	FUNC3(&buf, str, len);

	len = FUNC7(str, sizeof(str), "%u", tli);
	FUNC5(&buf, len);
	FUNC3(&buf, str, len);

	FUNC1(&buf);

	/* Send a CommandComplete message */
	FUNC2('C', "SELECT");
}