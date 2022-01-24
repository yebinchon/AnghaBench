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
struct TYPE_2__ {int loaded; void* handle; scalar_t__ dll_name; } ;

/* Variables and functions */
 int DLLS_SIZE ; 
 unsigned long FORMAT_MESSAGE_FROM_HMODULE ; 
 unsigned long FORMAT_MESSAGE_FROM_SYSTEM ; 
 unsigned long FORMAT_MESSAGE_IGNORE_INSERTS ; 
 scalar_t__ FUNC0 (unsigned long,void*,int,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  LOAD_LIBRARY_AS_DATAFILE ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 TYPE_1__* dlls ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,int) ; 
 int FUNC6 (char*) ; 

const char *
FUNC7(int err, char *strerrbuf, size_t buflen)
{
	unsigned long flags;
	int			offs,
				i;
	int			success = FUNC2(err, strerrbuf);

	for (i = 0; !success && i < DLLS_SIZE; i++)
	{

		if (!dlls[i].loaded)
		{
			dlls[i].loaded = 1; /* Only load once */
			dlls[i].handle = (void *) FUNC1(
													dlls[i].dll_name,
													0,
													LOAD_LIBRARY_AS_DATAFILE);
		}

		if (dlls[i].dll_name && !dlls[i].handle)
			continue;			/* Didn't load */

		flags = FORMAT_MESSAGE_FROM_SYSTEM
			| FORMAT_MESSAGE_IGNORE_INSERTS
			| (dlls[i].handle ? FORMAT_MESSAGE_FROM_HMODULE : 0);

		success = 0 != FUNC0(
									 flags,
									 dlls[i].handle, err,
									 FUNC3(LANG_ENGLISH, SUBLANG_DEFAULT),
									 strerrbuf, buflen - 64,
									 0
			);
	}

	if (!success)
		FUNC5(strerrbuf, FUNC4("unrecognized socket error: 0x%08X/%d"), err, err);
	else
	{
		strerrbuf[buflen - 1] = '\0';
		offs = FUNC6(strerrbuf);
		if (offs > (int) buflen - 64)
			offs = buflen - 64;
		FUNC5(strerrbuf + offs, " (0x%08X/%d)", err, err);
	}
	return strerrbuf;
}