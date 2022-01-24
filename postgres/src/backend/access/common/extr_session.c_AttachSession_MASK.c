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
typedef  int /*<<< orphan*/  shm_toc ;
typedef  int /*<<< orphan*/  dsm_segment ;
typedef  int /*<<< orphan*/  dsm_handle ;
typedef  int /*<<< orphan*/  dsa_area ;
struct TYPE_2__ {int /*<<< orphan*/ * area; int /*<<< orphan*/ * segment; } ;
typedef  int /*<<< orphan*/  SharedRecordTypmodRegistry ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 TYPE_1__* CurrentSession ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SESSION_KEY_DSA ; 
 int /*<<< orphan*/  SESSION_KEY_RECORD_TYPMOD_REGISTRY ; 
 int /*<<< orphan*/  SESSION_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/ * FUNC2 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void
FUNC10(dsm_handle handle)
{
	dsm_segment *seg;
	shm_toc    *toc;
	void	   *dsa_space;
	void	   *typmod_registry_space;
	dsa_area   *dsa;
	MemoryContext old_context;

	old_context = FUNC0(TopMemoryContext);

	/* Attach to the DSM segment. */
	seg = FUNC4(handle);
	if (seg == NULL)
		FUNC7(ERROR, "could not attach to per-session DSM segment");
	toc = FUNC8(SESSION_MAGIC, FUNC6(seg));

	/* Attach to the DSA area. */
	dsa_space = FUNC9(toc, SESSION_KEY_DSA, false);
	dsa = FUNC2(dsa_space, seg);

	/* Make them available via the current session. */
	CurrentSession->segment = seg;
	CurrentSession->area = dsa;

	/* Attach to the shared record typmod registry. */
	typmod_registry_space =
		FUNC9(toc, SESSION_KEY_RECORD_TYPMOD_REGISTRY, false);
	FUNC1((SharedRecordTypmodRegistry *)
									 typmod_registry_space);

	/* Remain attached until end of backend or DetachSession(). */
	FUNC5(seg);
	FUNC3(dsa);

	FUNC0(old_context);
}