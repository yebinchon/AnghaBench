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
typedef  int /*<<< orphan*/  RMagic ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned short) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC2(RMagic *ms, unsigned short md) {
	/* We cannot open it, but we were able to stat it. */
	if (md & 0222) {
		if (FUNC1 (ms, "writable, ") == -1) {
			return -1;
		}
	}
	if (md & 0111) {
		if (FUNC1 (ms, "executable, ") == -1) {
			return -1;
		}
	}
	if (FUNC0 (md)) {
		if (FUNC1 (ms, "regular file, ") == -1) {
			return -1;
		}
	}
	if (FUNC1 (ms, "no read permission") == -1) {
		return -1;
	}
	return 0;
}