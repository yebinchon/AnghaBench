#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dshash_table ;
struct TYPE_6__ {int /*<<< orphan*/ * shared_typmod_table; int /*<<< orphan*/ * shared_record_table; TYPE_1__* shared_typmod_registry; int /*<<< orphan*/ * segment; int /*<<< orphan*/ * area; } ;
struct TYPE_5__ {int /*<<< orphan*/  typmod_table_handle; int /*<<< orphan*/  record_table_handle; } ;
typedef  TYPE_1__ SharedRecordTypmodRegistry ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__* CurrentSession ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ NextRecordTypmod ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shared_record_typmod_registry_detach ; 
 int /*<<< orphan*/  srtr_record_table_params ; 
 int /*<<< orphan*/  srtr_typmod_table_params ; 

void
FUNC6(SharedRecordTypmodRegistry *registry)
{
	MemoryContext old_context;
	dshash_table *record_table;
	dshash_table *typmod_table;

	FUNC0(FUNC1());

	/* We can't already be attached to a shared registry. */
	FUNC0(CurrentSession != NULL);
	FUNC0(CurrentSession->segment != NULL);
	FUNC0(CurrentSession->area != NULL);
	FUNC0(CurrentSession->shared_typmod_registry == NULL);
	FUNC0(CurrentSession->shared_record_table == NULL);
	FUNC0(CurrentSession->shared_typmod_table == NULL);

	/*
	 * We can't already have typmods in our local cache, because they'd clash
	 * with those imported by SharedRecordTypmodRegistryInit.  This should be
	 * a freshly started parallel worker.  If we ever support worker
	 * recycling, a worker would need to zap its local cache in between
	 * servicing different queries, in order to be able to call this and
	 * synchronize typmods with a new leader; but that's problematic because
	 * we can't be very sure that record-typmod-related state hasn't escaped
	 * to anywhere else in the process.
	 */
	FUNC0(NextRecordTypmod == 0);

	old_context = FUNC2(TopMemoryContext);

	/* Attach to the two hash tables. */
	record_table = FUNC4(CurrentSession->area,
								 &srtr_record_table_params,
								 registry->record_table_handle,
								 CurrentSession->area);
	typmod_table = FUNC4(CurrentSession->area,
								 &srtr_typmod_table_params,
								 registry->typmod_table_handle,
								 NULL);

	FUNC2(old_context);

	/*
	 * Set up detach hook to run at worker exit.  Currently this is the same
	 * as the leader's detach hook, but in future they might need to be
	 * different.
	 */
	FUNC5(CurrentSession->segment,
				  shared_record_typmod_registry_detach,
				  FUNC3(registry));

	/*
	 * Set up the session state that will tell assign_record_type_typmod and
	 * lookup_rowtype_tupdesc_internal about the shared registry.
	 */
	CurrentSession->shared_typmod_registry = registry;
	CurrentSession->shared_record_table = record_table;
	CurrentSession->shared_typmod_table = typmod_table;
}