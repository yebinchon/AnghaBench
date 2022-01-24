#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* array; } ;
struct signal_info {int /*<<< orphan*/  mutex; TYPE_6__ callbacks; scalar_t__ signalling; } ;
struct TYPE_8__ {int /*<<< orphan*/  refs; } ;
typedef  TYPE_2__ signal_handler_t ;
typedef  int /*<<< orphan*/  signal_callback_t ;
struct TYPE_7__ {int remove; int keep_ref; } ;

/* Variables and functions */
 size_t DARRAY_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__,size_t) ; 
 struct signal_info* FUNC1 (TYPE_2__*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (struct signal_info*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void FUNC7(signal_handler_t *handler, const char *signal,
			       signal_callback_t callback, void *data)
{
	struct signal_info *sig = FUNC1(handler, signal);
	bool keep_ref = false;
	size_t idx;

	if (!sig)
		return;

	FUNC3(&sig->mutex);

	idx = FUNC5(sig, callback, data);
	if (idx != DARRAY_INVALID) {
		if (sig->signalling) {
			sig->callbacks.array[idx].remove = true;
		} else {
			keep_ref = sig->callbacks.array[idx].keep_ref;
			FUNC0(sig->callbacks, idx);
		}
	}

	FUNC4(&sig->mutex);

	if (keep_ref && FUNC2(&handler->refs) == 0) {
		FUNC6(handler);
	}
}