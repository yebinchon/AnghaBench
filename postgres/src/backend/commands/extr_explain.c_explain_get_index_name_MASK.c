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
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC5(Oid indexId)
{
	const char *result;

	if (&explain_get_index_name_hook)
		result = FUNC1) (indexId);
	else
		result = NULL;
	if (result == NULL)
	{
		/* default behavior: look in the catalogs and quote it */
		result = FUNC2(indexId);
		if (result == NULL)
			FUNC0(ERROR, "cache lookup failed for index %u", indexId);
		result = FUNC3(result);
	}
	return result;
}