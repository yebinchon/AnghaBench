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
struct TYPE_2__ {void const* extnodemethods; } ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  TYPE_1__ ExtensibleNodeEntry ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const void *
FUNC4(HTAB *htable, const char *extnodename, bool missing_ok)
{
	ExtensibleNodeEntry *entry = NULL;

	if (htable != NULL)
		entry = (ExtensibleNodeEntry *) FUNC3(htable,
													extnodename,
													HASH_FIND, NULL);
	if (!entry)
	{
		if (missing_ok)
			return NULL;
		FUNC0(ERROR,
				(FUNC1(ERRCODE_UNDEFINED_OBJECT),
				 FUNC2("ExtensibleNodeMethods \"%s\" was not registered",
						extnodename)));
	}

	return entry->extnodemethods;
}