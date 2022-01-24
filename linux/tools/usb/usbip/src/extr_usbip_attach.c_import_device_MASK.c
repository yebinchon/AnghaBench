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
typedef  int /*<<< orphan*/  uint32_t ;
struct usbip_usb_device {int /*<<< orphan*/  speed; int /*<<< orphan*/  devnum; int /*<<< orphan*/  busnum; } ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(int sockfd, struct usbip_usb_device *udev)
{
	int rc;
	int port;
	uint32_t speed = udev->speed;

	rc = FUNC4();
	if (rc < 0) {
		FUNC1("open vhci_driver");
		goto err_out;
	}

	do {
		port = FUNC5(speed);
		if (port < 0) {
			FUNC1("no free port");
			goto err_driver_close;
		}

		FUNC0("got free port %d", port);

		rc = FUNC2(port, sockfd, udev->busnum,
					      udev->devnum, udev->speed);
		if (rc < 0 && errno != EBUSY) {
			FUNC1("import device");
			goto err_driver_close;
		}
	} while (rc < 0);

	FUNC3();

	return port;

err_driver_close:
	FUNC3();
err_out:
	return -1;
}