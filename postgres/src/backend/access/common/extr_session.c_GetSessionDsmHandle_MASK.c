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
typedef  int /*<<< orphan*/  shm_toc_estimator ;
typedef  int /*<<< orphan*/  shm_toc ;
typedef  int /*<<< orphan*/  dsm_segment ;
typedef  int /*<<< orphan*/  dsm_handle ;
typedef  int /*<<< orphan*/  dsa_area ;
struct TYPE_2__ {int /*<<< orphan*/ * area; int /*<<< orphan*/ * segment; } ;
typedef  int /*<<< orphan*/  SharedRecordTypmodRegistry ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 TYPE_1__* CurrentSession ; 
 int /*<<< orphan*/  DSM_CREATE_NULL_IF_MAXSEGMENTS ; 
 int /*<<< orphan*/  DSM_HANDLE_INVALID ; 
 int /*<<< orphan*/  LWTRANCHE_SESSION_DSA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t SESSION_DSA_SIZE ; 
 int /*<<< orphan*/  SESSION_KEY_DSA ; 
 int /*<<< orphan*/  SESSION_KEY_RECORD_TYPMOD_REGISTRY ; 
 int /*<<< orphan*/  SESSION_MAGIC ; 
 size_t FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/ * FUNC3 (void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 

dsm_handle
FUNC16(void)
{
	shm_toc_estimator estimator;
	shm_toc    *toc;
	dsm_segment *seg;
	size_t		typmod_registry_size;
	size_t		size;
	void	   *dsa_space;
	void	   *typmod_registry_space;
	dsa_area   *dsa;
	MemoryContext old_context;

	/*
	 * If we have already created a session-scope DSM segment in this backend,
	 * return its handle.  The same segment will be used for the rest of this
	 * backend's lifetime.
	 */
	if (CurrentSession->segment != NULL)
		return FUNC8(CurrentSession->segment);

	/* Otherwise, prepare to set one up. */
	old_context = FUNC0(TopMemoryContext);
	FUNC14(&estimator);

	/* Estimate space for the per-session DSA area. */
	FUNC13(&estimator, 1);
	FUNC12(&estimator, SESSION_DSA_SIZE);

	/* Estimate space for the per-session record typmod registry. */
	typmod_registry_size = FUNC1();
	FUNC13(&estimator, 1);
	FUNC12(&estimator, typmod_registry_size);

	/* Set up segment and TOC. */
	size = FUNC11(&estimator);
	seg = FUNC5(size, DSM_CREATE_NULL_IF_MAXSEGMENTS);
	if (seg == NULL)
	{
		FUNC0(old_context);

		return DSM_HANDLE_INVALID;
	}
	toc = FUNC10(SESSION_MAGIC,
						 FUNC7(seg),
						 size);

	/* Create per-session DSA area. */
	dsa_space = FUNC9(toc, SESSION_DSA_SIZE);
	dsa = FUNC3(dsa_space,
							  SESSION_DSA_SIZE,
							  LWTRANCHE_SESSION_DSA,
							  seg);
	FUNC15(toc, SESSION_KEY_DSA, dsa_space);


	/* Create session-scoped shared record typmod registry. */
	typmod_registry_space = FUNC9(toc, typmod_registry_size);
	FUNC2((SharedRecordTypmodRegistry *)
								   typmod_registry_space, seg, dsa);
	FUNC15(toc, SESSION_KEY_RECORD_TYPMOD_REGISTRY,
				   typmod_registry_space);

	/*
	 * If we got this far, we can pin the shared memory so it stays mapped for
	 * the rest of this backend's life.  If we don't make it this far, cleanup
	 * callbacks for anything we installed above (ie currently
	 * SharedRecordTypmodRegistry) will run when the DSM segment is detached
	 * by CurrentResourceOwner so we aren't left with a broken CurrentSession.
	 */
	FUNC6(seg);
	FUNC4(dsa);

	/* Make segment and area available via CurrentSession. */
	CurrentSession->segment = seg;
	CurrentSession->area = dsa;

	FUNC0(old_context);

	return FUNC8(seg);
}