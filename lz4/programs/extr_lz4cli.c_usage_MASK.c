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
 int /*<<< orphan*/  LZ4_EXTENSION ; 
 int /*<<< orphan*/  stdinmark ; 

__attribute__((used)) static int FUNC1(const char* exeName)
{
    FUNC0( "Usage : \n");
    FUNC0( "      %s [arg] [input] [output] \n", exeName);
    FUNC0( "\n");
    FUNC0( "input   : a filename \n");
    FUNC0( "          with no FILE, or when FILE is - or %s, read standard input\n", stdinmark);
    FUNC0( "Arguments : \n");
    FUNC0( " -1     : Fast compression (default) \n");
    FUNC0( " -9     : High compression \n");
    FUNC0( " -d     : decompression (default for %s extension)\n", LZ4_EXTENSION);
    FUNC0( " -z     : force compression \n");
    FUNC0( " -D FILE: use FILE as dictionary \n");
    FUNC0( " -f     : overwrite output without prompting \n");
    FUNC0( " -k     : preserve source files(s)  (default) \n");
    FUNC0( "--rm    : remove source file(s) after successful de/compression \n");
    FUNC0( " -h/-H  : display help/long help and exit \n");
    return 0;
}