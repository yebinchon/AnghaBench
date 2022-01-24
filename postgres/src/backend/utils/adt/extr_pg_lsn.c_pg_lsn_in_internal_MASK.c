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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int InvalidXLogRecPtr ; 
 int MAXPG_LSNCOMPONENT ; 
 int FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 

XLogRecPtr
FUNC3(const char *str, bool *have_error)
{
	int			len1,
				len2;
	uint32		id,
				off;
	XLogRecPtr	result;

	FUNC0(have_error != NULL);
	*have_error = false;

	/* Sanity check input format. */
	len1 = FUNC1(str, "0123456789abcdefABCDEF");
	if (len1 < 1 || len1 > MAXPG_LSNCOMPONENT || str[len1] != '/')
	{
		*have_error = true;
		return InvalidXLogRecPtr;
	}
	len2 = FUNC1(str + len1 + 1, "0123456789abcdefABCDEF");
	if (len2 < 1 || len2 > MAXPG_LSNCOMPONENT || str[len1 + 1 + len2] != '\0')
	{
		*have_error = true;
		return InvalidXLogRecPtr;
	}

	/* Decode result. */
	id = (uint32) FUNC2(str, NULL, 16);
	off = (uint32) FUNC2(str + len1 + 1, NULL, 16);
	result = ((uint64) id << 32) | off;

	return result;
}