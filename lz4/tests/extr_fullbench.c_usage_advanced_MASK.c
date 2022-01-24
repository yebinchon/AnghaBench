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
 int /*<<< orphan*/  NBLOOPS ; 
 int /*<<< orphan*/  NB_COMPRESSION_ALGORITHMS ; 
 int /*<<< orphan*/  NB_DECOMPRESSION_ALGORITHMS ; 

__attribute__((used)) static int FUNC1(void)
{
    FUNC0( "\nAdvanced options :\n");
    FUNC0( " -c#    : test only compression function # [1-%i]\n", NB_COMPRESSION_ALGORITHMS);
    FUNC0( " -d#    : test only decompression function # [1-%i]\n", NB_DECOMPRESSION_ALGORITHMS);
    FUNC0( " -i#    : iteration loops [1-9](default : %i)\n", NBLOOPS);
    FUNC0( " -B#    : Block size [4-7](default : 7)\n");
    return 0;
}