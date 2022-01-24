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
typedef  int dsm_handle ;

/* Variables and functions */
#define  DSM_IMPL_WINDOWS 128 
 int /*<<< orphan*/  DUPLICATE_CLOSE_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  PostmasterHandle ; 
 char* SEGMENT_NAME_PREFIX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int dynamic_shared_memory_type ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,int) ; 

void
FUNC7(dsm_handle handle, void **impl_private)
{
	switch (dynamic_shared_memory_type)
	{
#ifdef USE_DSM_WINDOWS
		case DSM_IMPL_WINDOWS:
			{
				if (*impl_private &&
					!DuplicateHandle(PostmasterHandle, *impl_private,
									 NULL, NULL, 0, FALSE,
									 DUPLICATE_CLOSE_SOURCE))
				{
					char		name[64];

					snprintf(name, 64, "%s.%u", SEGMENT_NAME_PREFIX, handle);
					_dosmaperr(GetLastError());
					ereport(ERROR,
							(errcode_for_dynamic_shared_memory(),
							 errmsg("could not duplicate handle for \"%s\": %m",
									name)));
				}

				*impl_private = NULL;
				break;
			}
#endif
		default:
			break;
	}
}