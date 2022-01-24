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

__attribute__((used)) static int FUNC1(const char* exename)
{
    FUNC0( "Usage :\n");
    FUNC0( "      %s [arg] file1 file2 ... fileX\n", exename);
    FUNC0( "Arguments :\n");
    FUNC0( " -c     : compression tests only\n");
    FUNC0( " -d     : decompression tests only\n");
    FUNC0( " -H/-h  : Help (this text + advanced options)\n");
    return 0;
}