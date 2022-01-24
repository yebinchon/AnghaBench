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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FILE_CREATE ; 
 scalar_t__ FILE_OPEN ; 
 scalar_t__ FILE_OPEN_IF ; 
 scalar_t__ FILE_OVERWRITE ; 
 scalar_t__ FILE_OVERWRITE_IF ; 
 scalar_t__ FILE_SUPERSEDE ; 
 int /*<<< orphan*/  dlog_file ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int g_debug_level ; 

void FUNC1(int level, DWORD disposition) {
    if (level > g_debug_level) return;
    FUNC0(dlog_file, "userland disposition = ");
    if (disposition == FILE_SUPERSEDE)
        FUNC0(dlog_file, "FILE_SUPERSEDE\n");
    else if (disposition == FILE_CREATE)
        FUNC0(dlog_file, "FILE_CREATE\n");
    else if (disposition == FILE_OPEN)
        FUNC0(dlog_file, "FILE_OPEN\n");
    else if (disposition == FILE_OPEN_IF)
        FUNC0(dlog_file, "FILE_OPEN_IF\n");
    else if (disposition == FILE_OVERWRITE)
        FUNC0(dlog_file, "FILE_OVERWRITE\n");
    else if (disposition == FILE_OVERWRITE_IF)
        FUNC0(dlog_file, "FILE_OVERWRITE_IF\n");
}