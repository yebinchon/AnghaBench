#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ output_to_client; scalar_t__ output_to_server; int /*<<< orphan*/  assoc_context; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ ErrorData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* errordata ; 
 size_t errordata_stack_depth ; 
 int /*<<< orphan*/  recursion_depth ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void
FUNC6(void)
{
	ErrorData  *edata = &errordata[errordata_stack_depth];
	MemoryContext oldcontext;

	recursion_depth++;
	FUNC0();
	oldcontext = FUNC1(edata->assoc_context);

	/*
	 * Call hook before sending message to log.  The hook function is allowed
	 * to turn off edata->output_to_server, so we must recheck that afterward.
	 * Making any other change in the content of edata is not considered
	 * supported.
	 *
	 * Note: the reason why the hook can only turn off output_to_server, and
	 * not turn it on, is that it'd be unreliable: we will never get here at
	 * all if errstart() deems the message uninteresting.  A hook that could
	 * make decisions in that direction would have to hook into errstart(),
	 * where it would have much less information available.  emit_log_hook is
	 * intended for custom log filtering and custom log message transmission
	 * mechanisms.
	 *
	 * The log hook has access to both the translated and original English
	 * error message text, which is passed through to allow it to be used as a
	 * message identifier. Note that the original text is not available for
	 * detail, detail_log, hint and context text elements.
	 */
	if (edata->output_to_server && &emit_log_hook)
		FUNC2) (edata);

	/* Send to server log, if enabled */
	if (edata->output_to_server)
		FUNC4(edata);

	/* Send to client, if enabled */
	if (edata->output_to_client)
		FUNC3(edata);

	FUNC1(oldcontext);
	recursion_depth--;
}