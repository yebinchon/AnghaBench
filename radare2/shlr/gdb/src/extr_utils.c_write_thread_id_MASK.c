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
 int FUNC0 (char*,int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

int FUNC2(char *dest, int len, int pid, int tid, bool multiprocess) {
	if (!multiprocess) {
		if (tid < 0) {
			FUNC1 (dest, "-1", len);
			return 0;
		}
		return FUNC0 (dest, len, "%x", tid);
	}
	if (pid <= 0) {
		return -1;
	}
	if (tid < 0) {
		return FUNC0 (dest, len, "p%x.-1", pid);
	}
	return FUNC0 (dest, len, "p%x.%x", pid, tid);
}