#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_9__ {int nparticipants; size_t meta_data_size; int flags; TYPE_1__* participants; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int participant; int /*<<< orphan*/  context; int /*<<< orphan*/ * fileset; TYPE_3__* sts; } ;
struct TYPE_7__ {int writing; scalar_t__ read_page; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ SharedTuplestoreAccessor ;
typedef  TYPE_3__ SharedTuplestore ;
typedef  int /*<<< orphan*/  SharedFileSet ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LWTRANCHE_SHARED_TUPLESTORE ; 
 size_t STS_CHUNK_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC5 (char const*) ; 

SharedTuplestoreAccessor *
FUNC6(SharedTuplestore *sts, int participants,
			   int my_participant_number,
			   size_t meta_data_size,
			   int flags,
			   SharedFileSet *fileset,
			   const char *name)
{
	SharedTuplestoreAccessor *accessor;
	int			i;

	FUNC0(my_participant_number < participants);

	sts->nparticipants = participants;
	sts->meta_data_size = meta_data_size;
	sts->flags = flags;

	if (FUNC5(name) > sizeof(sts->name) - 1)
		FUNC2(ERROR, "SharedTuplestore name too long");
	FUNC4(sts->name, name);

	/*
	 * Limit meta-data so it + tuple size always fits into a single chunk.
	 * sts_puttuple() and sts_read_tuple() could be made to support scenarios
	 * where that's not the case, but it's not currently required. If so,
	 * meta-data size probably should be made variable, too.
	 */
	if (meta_data_size + sizeof(uint32) >= STS_CHUNK_DATA_SIZE)
		FUNC2(ERROR, "meta-data too long");

	for (i = 0; i < participants; ++i)
	{
		FUNC1(&sts->participants[i].lock,
						 LWTRANCHE_SHARED_TUPLESTORE);
		sts->participants[i].read_page = 0;
		sts->participants[i].writing = false;
	}

	accessor = FUNC3(sizeof(SharedTuplestoreAccessor));
	accessor->participant = my_participant_number;
	accessor->sts = sts;
	accessor->fileset = fileset;
	accessor->context = CurrentMemoryContext;

	return accessor;
}