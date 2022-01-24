#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TrgmStateKey ;
struct TYPE_9__ {int flags; int /*<<< orphan*/  stateKey; } ;
typedef  TYPE_1__ TrgmState ;
struct TYPE_10__ {scalar_t__ keysQueue; } ;
typedef  TYPE_2__ TrgmNFA ;

/* Variables and functions */
 scalar_t__ NIL ; 
 int TSTATE_FIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4(TrgmNFA *trgmNFA, TrgmState *state)
{
	/* keysQueue should be NIL already, but make sure */
	trgmNFA->keysQueue = NIL;

	/*
	 * Add state's own key, and then process all keys added to keysQueue until
	 * queue is empty.  But we can quit if the state gets marked final.
	 */
	FUNC1(trgmNFA, state, &state->stateKey);
	while (trgmNFA->keysQueue != NIL && !(state->flags & TSTATE_FIN))
	{
		TrgmStateKey *key = (TrgmStateKey *) FUNC2(trgmNFA->keysQueue);

		trgmNFA->keysQueue = FUNC3(trgmNFA->keysQueue);
		FUNC1(trgmNFA, state, key);
	}

	/*
	 * Add outgoing arcs only if state isn't final (we have no interest in
	 * outgoing arcs if we already match)
	 */
	if (!(state->flags & TSTATE_FIN))
		FUNC0(trgmNFA, state);
}