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
struct TYPE_6__ {int /*<<< orphan*/  vfd; int /*<<< orphan*/  path; } ;
struct TYPE_5__ {scalar_t__ rs_num_rewrite_mappings; int /*<<< orphan*/  rs_logical_mappings; int /*<<< orphan*/  rs_logical_rewrite; } ;
typedef  TYPE_1__* RewriteState ;
typedef  TYPE_2__ RewriteMappingFile ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAIT_EVENT_LOGICAL_REWRITE_SYNC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC9(RewriteState state)
{
	HASH_SEQ_STATUS seq_status;
	RewriteMappingFile *src;

	/* done, no logical rewrite in progress */
	if (!state->rs_logical_rewrite)
		return;

	/* writeout remaining in-memory entries */
	if (state->rs_num_rewrite_mappings > 0)
		FUNC8(state);

	/* Iterate over all mappings we have written and fsync the files. */
	FUNC6(&seq_status, state->rs_logical_mappings);
	while ((src = (RewriteMappingFile *) FUNC7(&seq_status)) != NULL)
	{
		if (FUNC1(src->vfd, WAIT_EVENT_LOGICAL_REWRITE_SYNC) != 0)
			FUNC3(FUNC2(ERROR),
					(FUNC4(),
					 FUNC5("could not fsync file \"%s\": %m", src->path)));
		FUNC0(src->vfd);
	}
	/* memory context cleanup will deal with the rest */
}