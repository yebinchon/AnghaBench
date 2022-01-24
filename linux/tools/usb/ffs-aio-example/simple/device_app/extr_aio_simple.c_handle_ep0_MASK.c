#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int bRequestType; } ;
struct TYPE_4__ {TYPE_1__ setup; } ;
struct usb_functionfs_event {int type; TYPE_2__ u; } ;
struct pollfd {int fd; int events; int revents; } ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
#define  FUNCTIONFS_DISABLE 130 
#define  FUNCTIONFS_ENABLE 129 
#define  FUNCTIONFS_SETUP 128 
 int POLLIN ; 
 int USB_DIR_IN ; 
 int /*<<< orphan*/  FUNC0 (struct usb_functionfs_event*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,struct usb_functionfs_event*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(int ep0, bool *ready)
{
	struct usb_functionfs_event event;
	int ret;

	struct pollfd pfds[1];
	pfds[0].fd = ep0;
	pfds[0].events = POLLIN;

	ret = FUNC2(pfds, 1, 0);

	if (ret && (pfds[0].revents & POLLIN)) {
		ret = FUNC3(ep0, &event, sizeof(event));
		if (!ret) {
			FUNC1("unable to read event from ep0");
			return;
		}
		FUNC0(&event);
		switch (event.type) {
		case FUNCTIONFS_SETUP:
			if (event.u.setup.bRequestType & USB_DIR_IN)
				FUNC4(ep0, NULL, 0);
			else
				FUNC3(ep0, NULL, 0);
			break;

		case FUNCTIONFS_ENABLE:
			*ready = true;
			break;

		case FUNCTIONFS_DISABLE:
			*ready = false;
			break;

		default:
			break;
		}
	}
}