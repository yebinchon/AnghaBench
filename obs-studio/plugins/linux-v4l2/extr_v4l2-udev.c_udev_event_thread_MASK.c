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
struct udev_monitor {int dummy; } ;
struct udev_device {int dummy; } ;
struct udev {int dummy; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC5 (struct udev_device*) ; 
 int /*<<< orphan*/  udev_event ; 
 scalar_t__ FUNC6 (struct udev_monitor*) ; 
 int /*<<< orphan*/  FUNC7 (struct udev_monitor*,char*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct udev_monitor*) ; 
 struct udev_monitor* FUNC9 (struct udev*,char*) ; 
 struct udev_device* FUNC10 (struct udev_monitor*) ; 
 int /*<<< orphan*/  FUNC11 (struct udev_monitor*) ; 
 struct udev* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct udev_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct udev*) ; 

__attribute__((used)) static void *FUNC15(void *vptr)
{
	FUNC2(vptr);

	int fd;
	fd_set fds;
	struct timeval tv;
	struct udev *udev;
	struct udev_monitor *mon;
	struct udev_device *dev;

	/* set up udev monitoring */
	udev = FUNC12();
	mon = FUNC9(udev, "udev");
	FUNC7(mon, "video4linux",
							NULL);
	if (FUNC6(mon) < 0)
		return NULL;

	/* set up fds */
	fd = FUNC8(mon);

	while (FUNC3(udev_event) == EAGAIN) {
		FUNC1(&fds);
		FUNC0(fd, &fds);
		tv.tv_sec = 1;
		tv.tv_usec = 0;

		if (FUNC4(fd + 1, &fds, NULL, NULL, &tv) <= 0)
			continue;

		dev = FUNC10(mon);
		if (!dev)
			continue;

		FUNC13(dev);

		FUNC5(dev);
	}

	FUNC11(mon);
	FUNC14(udev);

	return NULL;
}