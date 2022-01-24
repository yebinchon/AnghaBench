#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  security_context_t ;
struct TYPE_4__ {int /*<<< orphan*/  label; int /*<<< orphan*/  subid; } ;
typedef  TYPE_1__ pending_label ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  CurTransactionContext ; 
 int /*<<< orphan*/  ERRCODE_INVALID_NAME ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEPG_CLASS_PROCESS ; 
 int /*<<< orphan*/  SEPG_PROCESS__DYNTRANSITION ; 
 int /*<<< orphan*/  SEPG_PROCESS__SETCURRENT ; 
 char* client_label_peer ; 
 int /*<<< orphan*/  client_label_pending ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 char const* FUNC10 () ; 

__attribute__((used)) static void
FUNC11(const char *new_label)
{
	const char *tcontext;
	MemoryContext oldcxt;
	pending_label *plabel;

	/* Reset to the initial client label, if NULL */
	if (!new_label)
		tcontext = client_label_peer;
	else
	{
		if (FUNC8((security_context_t) new_label) < 0)
			FUNC2(ERROR,
					(FUNC3(ERRCODE_INVALID_NAME),
					 FUNC4("SELinux: invalid security label: \"%s\"",
							new_label)));
		tcontext = new_label;
	}

	/* Check process:{setcurrent} permission. */
	FUNC9(FUNC10(),
								  SEPG_CLASS_PROCESS,
								  SEPG_PROCESS__SETCURRENT,
								  NULL,
								  true);
	/* Check process:{dyntransition} permission. */
	FUNC9(tcontext,
								  SEPG_CLASS_PROCESS,
								  SEPG_PROCESS__DYNTRANSITION,
								  NULL,
								  true);

	/*
	 * Append the supplied new_label on the pending list until the current
	 * transaction is committed.
	 */
	oldcxt = FUNC1(CurTransactionContext);

	plabel = FUNC6(sizeof(pending_label));
	plabel->subid = FUNC0();
	if (new_label)
		plabel->label = FUNC7(new_label);
	client_label_pending = FUNC5(client_label_pending, plabel);

	FUNC1(oldcxt);
}