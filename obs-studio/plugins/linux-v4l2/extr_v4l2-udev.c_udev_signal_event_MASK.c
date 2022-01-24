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
struct udev_device {int dummy; } ;
struct calldata {int dummy; } ;
typedef  enum udev_action { ____Placeholder_udev_action } udev_action ;

/* Variables and functions */
#define  UDEV_ACTION_ADDED 129 
#define  UDEV_ACTION_REMOVED 128 
 int /*<<< orphan*/  FUNC0 (struct calldata*) ; 
 int /*<<< orphan*/  FUNC1 (struct calldata*) ; 
 int /*<<< orphan*/  FUNC2 (struct calldata*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct calldata*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct udev_device*) ; 
 char* FUNC8 (struct udev_device*) ; 
 int /*<<< orphan*/  udev_mutex ; 
 int /*<<< orphan*/  udev_signalhandler ; 

__attribute__((used)) static inline void FUNC9(struct udev_device *dev)
{
	const char *node;
	enum udev_action action;
	struct calldata data;

	FUNC3(&udev_mutex);

	node = FUNC8(dev);
	action = FUNC6(FUNC7(dev));

	FUNC1(&data);

	FUNC2(&data, "device", node);

	switch (action) {
	case UDEV_ACTION_ADDED:
		FUNC5(udev_signalhandler, "device_added",
				      &data);
		break;
	case UDEV_ACTION_REMOVED:
		FUNC5(udev_signalhandler, "device_removed",
				      &data);
		break;
	default:
		break;
	}

	FUNC0(&data);

	FUNC4(&udev_mutex);
}