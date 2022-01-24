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
 int KEY_LENGTH ; 
 int do_ipv6 ; 
 int do_rotate ; 
 int do_sockopt ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC1 (int,char**,char*) ; 
 int key_len ; 

__attribute__((used)) static void FUNC2(int argc, char **argv)
{
	int c;

	while ((c = FUNC1(argc, argv, "46sr")) != -1) {
		switch (c) {
		case '4':
			do_ipv6 = false;
			break;
		case '6':
			do_ipv6 = true;
			break;
		case 's':
			do_sockopt = true;
			break;
		case 'r':
			do_rotate = true;
			key_len = KEY_LENGTH * 2;
			break;
		default:
			FUNC0(1, 0, "%s: parse error", argv[0]);
		}
	}
}