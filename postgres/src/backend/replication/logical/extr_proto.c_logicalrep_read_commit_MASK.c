#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8 ;
struct TYPE_3__ {void* committime; void* end_lsn; void* commit_lsn; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ LogicalRepCommitData ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(StringInfo in, LogicalRepCommitData *commit_data)
{
	/* read flags (unused for now) */
	uint8		flags = FUNC1(in);

	if (flags != 0)
		FUNC0(ERROR, "unrecognized flags %u in commit message", flags);

	/* read fields */
	commit_data->commit_lsn = FUNC2(in);
	commit_data->end_lsn = FUNC2(in);
	commit_data->committime = FUNC2(in);
}