#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  arg; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ) ;struct TYPE_7__* previous; } ;
struct TYPE_6__ {int elevel; scalar_t__ internalquery; scalar_t__ constraint_name; scalar_t__ datatype_name; scalar_t__ column_name; scalar_t__ table_name; scalar_t__ schema_name; scalar_t__ backtrace; scalar_t__ context; scalar_t__ hint; scalar_t__ detail_log; scalar_t__ detail; scalar_t__ message; scalar_t__ funcname; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ ErrorData ;
typedef  TYPE_2__ ErrorContextCallback ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ CritSectionCount ; 
 scalar_t__ DestNone ; 
 scalar_t__ DestRemote ; 
 int ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ErrorContext ; 
 int FATAL ; 
 scalar_t__ InterruptHoldoffCount ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int PANIC ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * PG_exception_stack ; 
 scalar_t__ QueryCancelHoldoffCount ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ backtrace_functions ; 
 TYPE_2__* error_context_stack ; 
 TYPE_1__* errordata ; 
 size_t errordata_stack_depth ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  recursion_depth ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ whereToSendOutput ; 

void
FUNC13(int dummy,...)
{
	ErrorData  *edata = &errordata[errordata_stack_depth];
	int			elevel;
	MemoryContext oldcontext;
	ErrorContextCallback *econtext;

	recursion_depth++;
	FUNC1();
	elevel = edata->elevel;

	/*
	 * Do processing in ErrorContext, which we hope has enough reserved space
	 * to report an error.
	 */
	oldcontext = FUNC3(ErrorContext);

	if (!edata->backtrace &&
		edata->funcname &&
		backtrace_functions &&
		FUNC7(edata->funcname))
		FUNC11(edata, 2);

	/*
	 * Call any context callback functions.  Errors occurring in callback
	 * functions will be treated as recursive errors --- this ensures we will
	 * avoid infinite recursion (see errstart).
	 */
	for (econtext = error_context_stack;
		 econtext != NULL;
		 econtext = econtext->previous)
		econtext->callback(econtext->arg);

	/*
	 * If ERROR (not more nor less) we pass it off to the current handler.
	 * Printing it and popping the stack is the responsibility of the handler.
	 */
	if (elevel == ERROR)
	{
		/*
		 * We do some minimal cleanup before longjmp'ing so that handlers can
		 * execute in a reasonably sane state.
		 *
		 * Reset InterruptHoldoffCount in case we ereport'd from inside an
		 * interrupt holdoff section.  (We assume here that no handler will
		 * itself be inside a holdoff section.  If necessary, such a handler
		 * could save and restore InterruptHoldoffCount for itself, but this
		 * should make life easier for most.)
		 */
		InterruptHoldoffCount = 0;
		QueryCancelHoldoffCount = 0;

		CritSectionCount = 0;	/* should be unnecessary, but... */

		/*
		 * Note that we leave CurrentMemoryContext set to ErrorContext. The
		 * handler should reset it to something else soon.
		 */

		recursion_depth--;
		FUNC4();
	}

	/*
	 * If we are doing FATAL or PANIC, abort any old-style COPY OUT in
	 * progress, so that we can report the message before dying.  (Without
	 * this, pq_putmessage will refuse to send the message at all, which is
	 * what we want for NOTICE messages, but not for fatal exits.) This hack
	 * is necessary because of poor design of old-style copy protocol.
	 */
	if (elevel >= FATAL && whereToSendOutput == DestRemote)
		FUNC9(true);

	/* Emit the message to the right places */
	FUNC2();

	/* Now free up subsidiary data attached to stack entry, and release it */
	if (edata->message)
		FUNC8(edata->message);
	if (edata->detail)
		FUNC8(edata->detail);
	if (edata->detail_log)
		FUNC8(edata->detail_log);
	if (edata->hint)
		FUNC8(edata->hint);
	if (edata->context)
		FUNC8(edata->context);
	if (edata->backtrace)
		FUNC8(edata->backtrace);
	if (edata->schema_name)
		FUNC8(edata->schema_name);
	if (edata->table_name)
		FUNC8(edata->table_name);
	if (edata->column_name)
		FUNC8(edata->column_name);
	if (edata->datatype_name)
		FUNC8(edata->datatype_name);
	if (edata->constraint_name)
		FUNC8(edata->constraint_name);
	if (edata->internalquery)
		FUNC8(edata->internalquery);

	errordata_stack_depth--;

	/* Exit error-handling context */
	FUNC3(oldcontext);
	recursion_depth--;

	/*
	 * Perform error recovery action as specified by elevel.
	 */
	if (elevel == FATAL)
	{
		/*
		 * For a FATAL error, we let proc_exit clean up and exit.
		 *
		 * If we just reported a startup failure, the client will disconnect
		 * on receiving it, so don't send any more to the client.
		 */
		if (PG_exception_stack == NULL && whereToSendOutput == DestRemote)
			whereToSendOutput = DestNone;

		/*
		 * fflush here is just to improve the odds that we get to see the
		 * error message, in case things are so hosed that proc_exit crashes.
		 * Any other code you might be tempted to add here should probably be
		 * in an on_proc_exit or on_shmem_exit callback instead.
		 */
		FUNC6(stdout);
		FUNC6(stderr);

		/*
		 * Do normal process-exit cleanup, then return exit code 1 to indicate
		 * FATAL termination.  The postmaster may or may not consider this
		 * worthy of panic, depending on which subprocess returns it.
		 */
		FUNC10(1);
	}

	if (elevel >= PANIC)
	{
		/*
		 * Serious crash time. Postmaster will observe SIGABRT process exit
		 * status and kill the other backends too.
		 *
		 * XXX: what if we are *in* the postmaster?  abort() won't kill our
		 * children...
		 */
		FUNC6(stdout);
		FUNC6(stderr);
		FUNC5();
	}

	/*
	 * Check for cancel/die interrupt first --- this is so that the user can
	 * stop a query emitting tons of notice or warning messages, even if it's
	 * in a loop that otherwise fails to check for interrupts.
	 */
	FUNC0();
}