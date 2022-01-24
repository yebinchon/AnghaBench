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
typedef  int DWORD ;

/* Variables and functions */
 int FILE_COMPLETE_IF_OPLOCKED ; 
 int FILE_CREATE_TREE_CONNECTION ; 
 int FILE_DELETE_ON_CLOSE ; 
 int FILE_DIRECTORY_FILE ; 
 int FILE_NON_DIRECTORY_FILE ; 
 int FILE_NO_EA_KNOWLEDGE ; 
 int FILE_NO_INTERMEDIATE_BUFFERING ; 
 int FILE_OPEN_BY_FILE_ID ; 
 int FILE_OPEN_FOR_BACKUP_INTENT ; 
 int FILE_OPEN_REPARSE_POINT ; 
 int FILE_RANDOM_ACCESS ; 
 int FILE_RESERVE_OPFILTER ; 
 int FILE_SEQUENTIAL_ONLY ; 
 int FILE_SYNCHRONOUS_IO_ALERT ; 
 int FILE_SYNCHRONOUS_IO_NONALERT ; 
 int FILE_WRITE_THROUGH ; 
 int /*<<< orphan*/  dlog_file ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int g_debug_level ; 

void FUNC1(int level, DWORD create_opts) {
    if (level > g_debug_level) return;
    FUNC0(dlog_file, "create attributes: ");
    if (create_opts & FILE_DIRECTORY_FILE)
        FUNC0(dlog_file, "DIRECTORY_FILE ");
    if (create_opts & FILE_NON_DIRECTORY_FILE)
        FUNC0(dlog_file, "NON_DIRECTORY_FILE ");
    if (create_opts & FILE_WRITE_THROUGH)
        FUNC0(dlog_file, "WRITE_THROUGH ");
    if (create_opts & FILE_SEQUENTIAL_ONLY)
        FUNC0(dlog_file, "SEQUENTIAL_ONLY ");
    if (create_opts & FILE_RANDOM_ACCESS)
        FUNC0(dlog_file, "RANDOM_ACCESS ");
    if (create_opts & FILE_NO_INTERMEDIATE_BUFFERING)
        FUNC0(dlog_file, "NO_INTERMEDIATE_BUFFERING ");
    if (create_opts & FILE_SYNCHRONOUS_IO_ALERT)
        FUNC0(dlog_file, "SYNCHRONOUS_IO_ALERT ");
    if (create_opts & FILE_SYNCHRONOUS_IO_NONALERT)
        FUNC0(dlog_file, "SYNCHRONOUS_IO_NONALERT ");
    if (create_opts & FILE_CREATE_TREE_CONNECTION)
        FUNC0(dlog_file, "CREATE_TREE_CONNECTION ");
    if (create_opts & FILE_COMPLETE_IF_OPLOCKED)
        FUNC0(dlog_file, "COMPLETE_IF_OPLOCKED ");
    if (create_opts & FILE_NO_EA_KNOWLEDGE)
        FUNC0(dlog_file, "NO_EA_KNOWLEDGE ");
    if (create_opts & FILE_OPEN_REPARSE_POINT)
        FUNC0(dlog_file, "OPEN_REPARSE_POINT ");
    if (create_opts & FILE_DELETE_ON_CLOSE)
        FUNC0(dlog_file, "DELETE_ON_CLOSE ");
    if (create_opts & FILE_OPEN_BY_FILE_ID)
        FUNC0(dlog_file, "OPEN_BY_FILE_ID ");
    if (create_opts & FILE_OPEN_FOR_BACKUP_INTENT)
        FUNC0(dlog_file, "OPEN_FOR_BACKUP_INTENT ");
    if (create_opts & FILE_RESERVE_OPFILTER)
        FUNC0(dlog_file, "RESERVE_OPFILTER");
    FUNC0(dlog_file, "\n");
}