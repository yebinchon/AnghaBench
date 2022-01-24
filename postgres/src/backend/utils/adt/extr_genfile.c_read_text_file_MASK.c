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
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  bytea ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ VARHDRSZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static text *
FUNC4(const char *filename, int64 seek_offset, int64 bytes_to_read,
			   bool missing_ok)
{
	bytea	   *buf;

	buf = FUNC3(filename, seek_offset, bytes_to_read, missing_ok);

	if (buf != NULL)
	{
		/* Make sure the input is valid */
		FUNC2(FUNC0(buf), FUNC1(buf) - VARHDRSZ, false);

		/* OK, we can cast it to text safely */
		return (text *) buf;
	}
	else
		return NULL;
}