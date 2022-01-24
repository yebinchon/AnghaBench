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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ ** cookies ; 
 int cookies_size ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * fscxt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(bool isCommit)
{
	int			i;

	if (fscxt == NULL)
		return;					/* no LO operations in this xact */

	/*
	 * Close LO fds and clear cookies array so that LO fds are no longer good.
	 * On abort we skip the close step.
	 */
	for (i = 0; i < cookies_size; i++)
	{
		if (cookies[i] != NULL)
		{
			if (isCommit)
				FUNC3(cookies[i]);
			FUNC2(i);
		}
	}

	/* Needn't actually pfree since we're about to zap context */
	cookies = NULL;
	cookies_size = 0;

	/* Release the LO memory context to prevent permanent memory leaks. */
	FUNC0(fscxt);
	fscxt = NULL;

	/* Give inv_api.c a chance to clean up, too */
	FUNC1(isCommit);
}