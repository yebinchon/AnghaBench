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
 int FUNC0 () ; 
#define  WAIT_ABANDONED 131 
#define  WAIT_FAILED 130 
#define  WAIT_OBJECT_0 129 
#define  WAIT_TIMEOUT 128 
 int /*<<< orphan*/  dlog_file ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int g_debug_level ; 

void FUNC2(int level, int status)
{
    if (level > g_debug_level) return;
    switch(status) {
        case WAIT_ABANDONED: FUNC1(dlog_file, "WAIT_ABANDONED\n"); break;
        case WAIT_OBJECT_0: FUNC1(dlog_file, "WAIT_OBJECT_0\n"); break;
        case WAIT_TIMEOUT: FUNC1(dlog_file, "WAIT_TIMEOUT\n"); break;
        case WAIT_FAILED: FUNC1(dlog_file, "WAIT_FAILED %d\n", FUNC0());
        default: FUNC1(dlog_file, "unknown status =%d\n", status);
    }
}