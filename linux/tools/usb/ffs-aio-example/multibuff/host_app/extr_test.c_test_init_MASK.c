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
struct test_state {int attached; int /*<<< orphan*/ * ctx; int /*<<< orphan*/ * handle; int /*<<< orphan*/ * found; } ;
struct libusb_device_descriptor {scalar_t__ idVendor; scalar_t__ idProduct; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  libusb_device ;

/* Variables and functions */
 scalar_t__ PRODUCT ; 
 scalar_t__ VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct libusb_device_descriptor*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***) ; 
 int FUNC9 (int /*<<< orphan*/ **) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

int FUNC12(struct test_state *state)
{
	int i, ret;
	ssize_t cnt;
	libusb_device **list;

	state->found = NULL;
	state->ctx = NULL;
	state->handle = NULL;
	state->attached = 0;

	ret = FUNC9(&state->ctx);
	if (ret) {
		FUNC11("cannot init libusb: %s\n", FUNC4(ret));
		return 1;
	}

	cnt = FUNC8(state->ctx, &list);
	if (cnt <= 0) {
		FUNC11("no devices found\n");
		goto error1;
	}

	for (i = 0; i < cnt; ++i) {
		libusb_device *dev = list[i];
		struct libusb_device_descriptor desc;
		ret = FUNC7(dev, &desc);
		if (ret) {
			FUNC11("unable to get device descriptor: %s\n",
			       FUNC4(ret));
			goto error2;
		}
		if (desc.idVendor == VENDOR && desc.idProduct == PRODUCT) {
			state->found = dev;
			break;
		}
	}

	if (!state->found) {
		FUNC11("no devices found\n");
		goto error2;
	}

	ret = FUNC10(state->found, &state->handle);
	if (ret) {
		FUNC11("cannot open device: %s\n", FUNC4(ret));
		goto error2;
	}

	if (FUNC1(state->handle, 0)) {
		ret = FUNC3(state->handle, 0);
		if (ret) {
			FUNC11("unable to detach kernel driver: %s\n",
			       FUNC4(ret));
			goto error3;
		}
		state->attached = 1;
		ret = FUNC1(state->handle, 0);
		if (ret) {
			FUNC11("cannot claim interface: %s\n",
			       FUNC4(ret));
			goto error4;
		}
	}

	return 0;

error4:
	if (state->attached == 1)
		FUNC0(state->handle, 0);

error3:
	FUNC2(state->handle);

error2:
	FUNC6(list, 1);

error1:
	FUNC5(state->ctx);
	return 1;
}