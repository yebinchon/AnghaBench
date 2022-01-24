#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void const* extnodemethods; } ;
struct TYPE_5__ {int entrysize; scalar_t__ keysize; } ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  TYPE_1__ HASHCTL ;
typedef  TYPE_2__ ExtensibleNodeEntry ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ EXTNODENAME_MAX_LEN ; 
 int /*<<< orphan*/  HASH_ELEM ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static void
FUNC8(HTAB **p_htable, const char *htable_label,
							const char *extnodename,
							const void *extnodemethods)
{
	ExtensibleNodeEntry *entry;
	bool		found;

	if (*p_htable == NULL)
	{
		HASHCTL		ctl;

		FUNC6(&ctl, 0, sizeof(HASHCTL));
		ctl.keysize = EXTNODENAME_MAX_LEN;
		ctl.entrysize = sizeof(ExtensibleNodeEntry);

		*p_htable = FUNC4(htable_label, 100, &ctl, HASH_ELEM);
	}

	if (FUNC7(extnodename) >= EXTNODENAME_MAX_LEN)
		FUNC0(ERROR, "extensible node name is too long");

	entry = (ExtensibleNodeEntry *) FUNC5(*p_htable,
												extnodename,
												HASH_ENTER, &found);
	if (found)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_DUPLICATE_OBJECT),
				 FUNC3("extensible node type \"%s\" already exists",
						extnodename)));

	entry->extnodemethods = extnodemethods;
}