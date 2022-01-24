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
struct signal_info {int /*<<< orphan*/  mutex; int /*<<< orphan*/  callbacks; } ;
struct signal_callback {void* member_1; int member_2; int member_3; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int /*<<< orphan*/  refs; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ signal_handler_t ;
typedef  int /*<<< orphan*/  signal_callback_t ;

/* Variables and functions */
 size_t DARRAY_INVALID ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct signal_callback*) ; 
 struct signal_info* FUNC2 (TYPE_1__*,char const*,struct signal_info**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (struct signal_info*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC7(signal_handler_t *handler,
					    const char *signal,
					    signal_callback_t callback,
					    void *data, bool keep_ref)
{
	struct signal_info *sig, *last;
	struct signal_callback cb_data = {callback, data, false, keep_ref};
	size_t idx;

	if (!handler)
		return;

	FUNC4(&handler->mutex);
	sig = FUNC2(handler, signal, &last);
	FUNC5(&handler->mutex);

	if (!sig) {
		FUNC0(LOG_WARNING,
		     "signal_handler_connect: "
		     "signal '%s' not found",
		     signal);
		return;
	}

	/* -------------- */

	FUNC4(&sig->mutex);

	if (keep_ref)
		FUNC3(&handler->refs);

	idx = FUNC6(sig, callback, data);
	if (keep_ref || idx == DARRAY_INVALID)
		FUNC1(sig->callbacks, &cb_data);

	FUNC5(&sig->mutex);
}