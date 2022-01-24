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
 int /*<<< orphan*/  ALARM_INTERVAL_SECS ; 
 int SIGALRM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int test_uffdio_copy_eexist ; 
 int test_uffdio_zeropage_eexist ; 

__attribute__((used)) static void FUNC2(int sig)
{
	if (sig != SIGALRM)
		FUNC0();
	test_uffdio_copy_eexist = true;
	test_uffdio_zeropage_eexist = true;
	FUNC1(ALARM_INTERVAL_SECS);
}