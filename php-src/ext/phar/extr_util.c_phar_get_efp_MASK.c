#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_8__ {scalar_t__ fp_type; int /*<<< orphan*/ * fp; int /*<<< orphan*/  tmp; int /*<<< orphan*/  phar; scalar_t__ link; } ;
typedef  TYPE_1__ phar_entry_info ;

/* Variables and functions */
 scalar_t__ PHAR_FP ; 
 scalar_t__ PHAR_MOD ; 
 scalar_t__ PHAR_UFP ; 
 int STREAM_MUST_SEEK ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 

php_stream *FUNC6(phar_entry_info *entry, int follow_links) /* {{{ */
{
	if (follow_links && entry->link) {
		phar_entry_info *link_entry = FUNC3(entry);

		if (link_entry && link_entry != entry) {
			return FUNC6(link_entry, 1);
		}
	}

	if (FUNC2(entry) == PHAR_FP) {
		if (!FUNC0(entry)) {
			/* re-open just in time for cases where our refcount reached 0 on the phar archive */
			FUNC4(entry->phar);
		}
		return FUNC0(entry);
	} else if (FUNC2(entry) == PHAR_UFP) {
		return FUNC1(entry);
	} else if (entry->fp_type == PHAR_MOD) {
		return entry->fp;
	} else {
		/* temporary manifest entry */
		if (!entry->fp) {
			entry->fp = FUNC5(entry->tmp, "rb", STREAM_MUST_SEEK|0, NULL);
		}
		return entry->fp;
	}
}