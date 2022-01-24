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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 char* rtc_file ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC1 (int,char**) ; 

int FUNC2(int argc, char **argv)
{
	switch (argc) {
	case 2:
		rtc_file = argv[1];
		/* FALLTHROUGH */
	case 1:
		break;
	default:
		FUNC0(stderr, "usage: %s [rtcdev]\n", argv[0]);
		return 1;
	}

	return FUNC1(argc, argv);
}