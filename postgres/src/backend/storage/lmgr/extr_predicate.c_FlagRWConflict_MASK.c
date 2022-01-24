#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ SERIALIZABLEXACT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* OldCommittedSxact ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  SXACT_FLAG_SUMMARY_CONFLICT_IN ; 
 int /*<<< orphan*/  SXACT_FLAG_SUMMARY_CONFLICT_OUT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(SERIALIZABLEXACT *reader, SERIALIZABLEXACT *writer)
{
	FUNC0(reader != writer);

	/* First, see if this conflict causes failure. */
	FUNC1(reader, writer);

	/* Actually do the conflict flagging. */
	if (reader == OldCommittedSxact)
		writer->flags |= SXACT_FLAG_SUMMARY_CONFLICT_IN;
	else if (writer == OldCommittedSxact)
		reader->flags |= SXACT_FLAG_SUMMARY_CONFLICT_OUT;
	else
		FUNC2(reader, writer);
}