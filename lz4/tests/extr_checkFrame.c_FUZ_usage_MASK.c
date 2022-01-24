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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

int FUNC1(const char* programName)
{
    FUNC0( "Usage :\n");
    FUNC0( "      %s [args] filename\n", programName);
    FUNC0( "\n");
    FUNC0( "Arguments :\n");
    FUNC0( " -b#    : expected blocksizeID [4-7] (required)\n");
    FUNC0( " -B#    : expected blocksize [32-4194304] (required)\n");
    FUNC0( " -v     : verbose\n");
    FUNC0( " -h     : display help and exit\n");
    return 0;
}