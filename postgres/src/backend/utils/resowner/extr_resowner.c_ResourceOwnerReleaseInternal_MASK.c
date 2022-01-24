#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsm_segment ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_8__ {int nlocks; int /*<<< orphan*/  filearr; int /*<<< orphan*/  snapshotarr; int /*<<< orphan*/  tupdescarr; int /*<<< orphan*/  planrefarr; int /*<<< orphan*/  catlistrefarr; int /*<<< orphan*/  catrefarr; int /*<<< orphan*/ ** locks; int /*<<< orphan*/ * parent; int /*<<< orphan*/  jitarr; int /*<<< orphan*/  dsmarr; int /*<<< orphan*/  relrefarr; int /*<<< orphan*/  bufferarr; struct TYPE_8__* nextchild; struct TYPE_8__* firstchild; } ;
struct TYPE_7__ {int /*<<< orphan*/  arg; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ;struct TYPE_7__* next; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  ResourceReleasePhase ;
typedef  TYPE_1__ ResourceReleaseCallbackItem ;
typedef  TYPE_2__* ResourceOwner ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  LOCALLOCK ;
typedef  int /*<<< orphan*/  JitContext ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  File ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  CatCList ;
typedef  int /*<<< orphan*/  CachedPlan ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* CurrentResourceOwner ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int) ; 
 int MAX_RESOWNER_LOCKS ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  RESOURCE_RELEASE_AFTER_LOCKS ; 
 int /*<<< orphan*/  RESOURCE_RELEASE_BEFORE_LOCKS ; 
 int /*<<< orphan*/  RESOURCE_RELEASE_LOCKS ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int,int) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* ResourceRelease_callbacks ; 
 TYPE_2__* TopTransactionResourceOwner ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC30(ResourceOwner owner,
							 ResourceReleasePhase phase,
							 bool isCommit,
							 bool isTopLevel)
{
	ResourceOwner child;
	ResourceOwner save;
	ResourceReleaseCallbackItem *item;
	Datum		foundres;

	/* Recurse to handle descendants */
	for (child = owner->firstchild; child != NULL; child = child->nextchild)
		FUNC30(child, phase, isCommit, isTopLevel);

	/*
	 * Make CurrentResourceOwner point to me, so that ReleaseBuffer etc don't
	 * get confused.
	 */
	save = CurrentResourceOwner;
	CurrentResourceOwner = owner;

	if (phase == RESOURCE_RELEASE_BEFORE_LOCKS)
	{
		/*
		 * Release buffer pins.  Note that ReleaseBuffer will remove the
		 * buffer entry from our array, so we just have to iterate till there
		 * are none.
		 *
		 * During a commit, there shouldn't be any remaining pins --- that
		 * would indicate failure to clean up the executor correctly --- so
		 * issue warnings.  In the abort case, just clean up quietly.
		 */
		while (FUNC25(&(owner->bufferarr), &foundres))
		{
			Buffer		res = FUNC1(foundres);

			if (isCommit)
				FUNC9(res);
			FUNC20(res);
		}

		/* Ditto for relcache references */
		while (FUNC25(&(owner->relrefarr), &foundres))
		{
			Relation	res = (Relation) FUNC3(foundres);

			if (isCommit)
				FUNC15(res);
			FUNC19(res);
		}

		/* Ditto for dynamic shared memory segments */
		while (FUNC25(&(owner->dsmarr), &foundres))
		{
			dsm_segment *res = (dsm_segment *) FUNC3(foundres);

			if (isCommit)
				FUNC12(res);
			FUNC27(res);
		}

		/* Ditto for JIT contexts */
		while (FUNC25(&(owner->jitarr), &foundres))
		{
			JitContext *context = (JitContext *) FUNC8(foundres);

			FUNC28(context);
		}
	}
	else if (phase == RESOURCE_RELEASE_LOCKS)
	{
		if (isTopLevel)
		{
			/*
			 * For a top-level xact we are going to release all locks (or at
			 * least all non-session locks), so just do a single lmgr call at
			 * the top of the recursion.
			 */
			if (owner == TopTransactionResourceOwner)
			{
				FUNC18(isCommit);
				FUNC24(isCommit, false);
			}
		}
		else
		{
			/*
			 * Release locks retail.  Note that if we are committing a
			 * subtransaction, we do NOT release its locks yet, but transfer
			 * them to the parent.
			 */
			LOCALLOCK **locks;
			int			nlocks;

			FUNC0(owner->parent != NULL);

			/*
			 * Pass the list of locks owned by this resource owner to the lock
			 * manager, unless it has overflowed.
			 */
			if (owner->nlocks > MAX_RESOWNER_LOCKS)
			{
				locks = NULL;
				nlocks = 0;
			}
			else
			{
				locks = owner->locks;
				nlocks = owner->nlocks;
			}

			if (isCommit)
				FUNC6(locks, nlocks);
			else
				FUNC7(locks, nlocks);
		}
	}
	else if (phase == RESOURCE_RELEASE_AFTER_LOCKS)
	{
		/*
		 * Release catcache references.  Note that ReleaseCatCache will remove
		 * the catref entry from our array, so we just have to iterate till
		 * there are none.
		 *
		 * As with buffer pins, warn if any are left at commit time.
		 */
		while (FUNC25(&(owner->catrefarr), &foundres))
		{
			HeapTuple	res = (HeapTuple) FUNC3(foundres);

			if (isCommit)
				FUNC10(res);
			FUNC22(res);
		}

		/* Ditto for catcache lists */
		while (FUNC25(&(owner->catlistrefarr), &foundres))
		{
			CatCList   *res = (CatCList *) FUNC3(foundres);

			if (isCommit)
				FUNC11(res);
			FUNC23(res);
		}

		/* Ditto for plancache references */
		while (FUNC25(&(owner->planrefarr), &foundres))
		{
			CachedPlan *res = (CachedPlan *) FUNC3(foundres);

			if (isCommit)
				FUNC14(res);
			FUNC21(res, true);
		}

		/* Ditto for tupdesc references */
		while (FUNC25(&(owner->tupdescarr), &foundres))
		{
			TupleDesc	res = (TupleDesc) FUNC3(foundres);

			if (isCommit)
				FUNC17(res);
			FUNC4(res);
		}

		/* Ditto for snapshot references */
		while (FUNC25(&(owner->snapshotarr), &foundres))
		{
			Snapshot	res = (Snapshot) FUNC3(foundres);

			if (isCommit)
				FUNC16(res);
			FUNC26(res);
		}

		/* Ditto for temporary files */
		while (FUNC25(&(owner->filearr), &foundres))
		{
			File		res = FUNC2(foundres);

			if (isCommit)
				FUNC13(res);
			FUNC5(res);
		}
	}

	/* Let add-on modules get a chance too */
	for (item = ResourceRelease_callbacks; item; item = item->next)
		item->callback(phase, isCommit, isTopLevel, item->arg);

	CurrentResourceOwner = save;
}