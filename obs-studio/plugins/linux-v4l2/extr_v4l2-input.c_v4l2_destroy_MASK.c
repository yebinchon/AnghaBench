#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  signal_handler_t ;
struct TYPE_5__ {struct TYPE_5__* device_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* data ; 
 int /*<<< orphan*/  device_added ; 
 int /*<<< orphan*/  device_removed ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(void *vptr)
{
	FUNC0(vptr);

	if (!data)
		return;

	FUNC4(data);

	if (data->device_id)
		FUNC1(data->device_id);

#if HAVE_UDEV
	signal_handler_t *sh = v4l2_get_udev_signalhandler();

	signal_handler_disconnect(sh, "device_added", device_added, data);
	signal_handler_disconnect(sh, "device_removed", device_removed, data);

	v4l2_unref_udev();
#endif

	FUNC1(data);
}