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
 int do_run_logger_thread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  logger_thread ; 
 int /*<<< orphan*/  logger_tid ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(void) {
    int ret;
    do_run_logger_thread = 1;
    if ((ret = FUNC1(&logger_tid, NULL,
                              logger_thread, NULL)) != 0) {
        FUNC0(stderr, "Can't start logger thread: %s\n", FUNC2(ret));
        return -1;
    }
    return 0;
}