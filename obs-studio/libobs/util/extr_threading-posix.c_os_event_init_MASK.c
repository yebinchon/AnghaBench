#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct os_event_data {int manual; int signalled; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; } ;
typedef  struct os_event_data os_event_t ;
typedef  enum os_event_type { ____Placeholder_os_event_type } os_event_type ;

/* Variables and functions */
 int OS_EVENT_TYPE_MANUAL ; 
 int /*<<< orphan*/  FUNC0 (struct os_event_data*) ; 
 struct os_event_data* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5(os_event_t **event, enum os_event_type type)
{
	int code = 0;

	struct os_event_data *data = FUNC1(sizeof(struct os_event_data));

	if ((code = FUNC4(&data->mutex, NULL)) < 0) {
		FUNC0(data);
		return code;
	}

	if ((code = FUNC2(&data->cond, NULL)) < 0) {
		FUNC3(&data->mutex);
		FUNC0(data);
		return code;
	}

	data->manual = (type == OS_EVENT_TYPE_MANUAL);
	data->signalled = false;
	*event = data;

	return 0;
}