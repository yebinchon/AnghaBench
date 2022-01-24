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
struct TYPE_2__ {int trancheId; char* trancheName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 char const** LWLockTrancheArray ; 
 int LWLockTranchesAllocated ; 
 int LWTRANCHE_BUFFER_MAPPING ; 
 int LWTRANCHE_FIRST_USER_DEFINED ; 
 int LWTRANCHE_LOCK_MANAGER ; 
 int LWTRANCHE_PARALLEL_APPEND ; 
 int LWTRANCHE_PARALLEL_HASH_JOIN ; 
 int LWTRANCHE_PARALLEL_QUERY_DSA ; 
 int LWTRANCHE_PREDICATE_LOCK_MANAGER ; 
 int LWTRANCHE_SESSION_DSA ; 
 int LWTRANCHE_SESSION_RECORD_TABLE ; 
 int LWTRANCHE_SESSION_TYPMOD_TABLE ; 
 int LWTRANCHE_SHARED_TUPLESTORE ; 
 int LWTRANCHE_SXACT ; 
 int LWTRANCHE_TBM ; 
 char** MainLWLockNames ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int NUM_INDIVIDUAL_LWLOCKS ; 
 TYPE_1__* NamedLWLockTrancheArray ; 
 int NamedLWLockTrancheRequests ; 
 int /*<<< orphan*/  TopMemoryContext ; 

__attribute__((used)) static void
FUNC3(void)
{
	int			i;

	if (LWLockTrancheArray == NULL)
	{
		LWLockTranchesAllocated = 128;
		LWLockTrancheArray = (const char **)
			FUNC2(TopMemoryContext,
								   LWLockTranchesAllocated * sizeof(char *));
		FUNC0(LWLockTranchesAllocated >= LWTRANCHE_FIRST_USER_DEFINED);
	}

	for (i = 0; i < NUM_INDIVIDUAL_LWLOCKS; ++i)
		FUNC1(i, MainLWLockNames[i]);

	FUNC1(LWTRANCHE_BUFFER_MAPPING, "buffer_mapping");
	FUNC1(LWTRANCHE_LOCK_MANAGER, "lock_manager");
	FUNC1(LWTRANCHE_PREDICATE_LOCK_MANAGER,
						  "predicate_lock_manager");
	FUNC1(LWTRANCHE_PARALLEL_QUERY_DSA,
						  "parallel_query_dsa");
	FUNC1(LWTRANCHE_SESSION_DSA,
						  "session_dsa");
	FUNC1(LWTRANCHE_SESSION_RECORD_TABLE,
						  "session_record_table");
	FUNC1(LWTRANCHE_SESSION_TYPMOD_TABLE,
						  "session_typmod_table");
	FUNC1(LWTRANCHE_SHARED_TUPLESTORE,
						  "shared_tuplestore");
	FUNC1(LWTRANCHE_TBM, "tbm");
	FUNC1(LWTRANCHE_PARALLEL_APPEND, "parallel_append");
	FUNC1(LWTRANCHE_PARALLEL_HASH_JOIN, "parallel_hash_join");
	FUNC1(LWTRANCHE_SXACT, "serializable_xact");

	/* Register named tranches. */
	for (i = 0; i < NamedLWLockTrancheRequests; i++)
		FUNC1(NamedLWLockTrancheArray[i].trancheId,
							  NamedLWLockTrancheArray[i].trancheName);
}