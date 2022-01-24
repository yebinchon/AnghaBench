#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* TransactionId ;
struct TYPE_5__ {scalar_t__ status; void* xid; } ;
typedef  scalar_t__ MultiXactStatus ;
typedef  TYPE_1__ MultiXactMember ;
typedef  void* MultiXactId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG2 ; 
 int FUNC2 (void*,TYPE_1__**,int,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 void* FUNC4 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 size_t MyBackendId ; 
 void** OldestMemberMXactId ; 
 scalar_t__ FUNC6 (void*) ; 
 scalar_t__ FUNC7 (void*,void*) ; 
 scalar_t__ FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

MultiXactId
FUNC16(MultiXactId multi, TransactionId xid, MultiXactStatus status)
{
	MultiXactId newMulti;
	MultiXactMember *members;
	MultiXactMember *newMembers;
	int			nmembers;
	int			i;
	int			j;

	FUNC1(FUNC5(multi));
	FUNC1(FUNC9(xid));

	/* MultiXactIdSetOldestMember() must have been called already. */
	FUNC0(FUNC5(OldestMemberMXactId[MyBackendId]));

	FUNC12(DEBUG2, "Expand: received multi %u, xid %u status %s",
				multi, xid, FUNC13(status));

	/*
	 * Note: we don't allow for old multis here.  The reason is that the only
	 * caller of this function does a check that the multixact is no longer
	 * running.
	 */
	nmembers = FUNC2(multi, &members, false, false);

	if (nmembers < 0)
	{
		MultiXactMember member;

		/*
		 * The MultiXactId is obsolete.  This can only happen if all the
		 * MultiXactId members stop running between the caller checking and
		 * passing it to us.  It would be better to return that fact to the
		 * caller, but it would complicate the API and it's unlikely to happen
		 * too often, so just deal with it by creating a singleton MultiXact.
		 */
		member.xid = xid;
		member.status = status;
		newMulti = FUNC4(1, &member);

		FUNC11(DEBUG2, "Expand: %u has no members, create singleton %u",
					multi, newMulti);
		return newMulti;
	}

	/*
	 * If the TransactionId is already a member of the MultiXactId with the
	 * same status, just return the existing MultiXactId.
	 */
	for (i = 0; i < nmembers; i++)
	{
		if (FUNC7(members[i].xid, xid) &&
			(members[i].status == status))
		{
			FUNC11(DEBUG2, "Expand: %u is already a member of %u",
						xid, multi);
			FUNC15(members);
			return multi;
		}
	}

	/*
	 * Determine which of the members of the MultiXactId are still of
	 * interest. This is any running transaction, and also any transaction
	 * that grabbed something stronger than just a lock and was committed. (An
	 * update that aborted is of no interest here; and having more than one
	 * update Xid in a multixact would cause errors elsewhere.)
	 *
	 * Removing dead members is not just an optimization: freezing of tuples
	 * whose Xmax are multis depends on this behavior.
	 *
	 * Note we have the same race condition here as above: j could be 0 at the
	 * end of the loop.
	 */
	newMembers = (MultiXactMember *)
		FUNC14(sizeof(MultiXactMember) * (nmembers + 1));

	for (i = 0, j = 0; i < nmembers; i++)
	{
		if (FUNC8(members[i].xid) ||
			(FUNC3(members[i].status) &&
			 FUNC6(members[i].xid)))
		{
			newMembers[j].xid = members[i].xid;
			newMembers[j++].status = members[i].status;
		}
	}

	newMembers[j].xid = xid;
	newMembers[j++].status = status;
	newMulti = FUNC4(j, newMembers);

	FUNC15(members);
	FUNC15(newMembers);

	FUNC10(DEBUG2, "Expand: returning new multi %u", newMulti);

	return newMulti;
}