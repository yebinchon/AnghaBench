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
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(HANDLE th, int bits) {
	int ret;
	//if (bits == R_SYS_BITS_32) {
		if ((ret = FUNC0 (th)) == -1) {
			FUNC1 ("__suspend_thread/SuspendThread");
		}
	/*} else {
		if ((ret = Wow64SuspendThread (th)) == -1) {
			r_sys_perror ("__suspend_thread/Wow64SuspendThread");
		}
	}*/
	return ret;
}