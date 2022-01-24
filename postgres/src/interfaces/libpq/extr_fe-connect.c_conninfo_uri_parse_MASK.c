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
typedef  int /*<<< orphan*/  PQconninfoOption ;
typedef  int /*<<< orphan*/  PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PQconninfoOption *
FUNC4(const char *uri, PQExpBuffer errorMessage,
				   bool use_defaults)
{
	PQconninfoOption *options;

	/* Make a working copy of PQconninfoOptions */
	options = FUNC2(errorMessage);
	if (options == NULL)
		return NULL;

	if (!FUNC3(options, uri, errorMessage))
	{
		FUNC0(options);
		return NULL;
	}

	/*
	 * Add in defaults if the caller wants that.
	 */
	if (use_defaults)
	{
		if (!FUNC1(options, errorMessage))
		{
			FUNC0(options);
			return NULL;
		}
	}

	return options;
}