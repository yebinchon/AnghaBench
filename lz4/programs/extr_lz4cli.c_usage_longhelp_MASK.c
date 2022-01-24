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
 int /*<<< orphan*/  LZ4HC_CLEVEL_MAX ; 
 int /*<<< orphan*/  LZ4_EXTENSION ; 
 int /*<<< orphan*/  NULL_OUTPUT ; 
 scalar_t__ g_lz4c_legacy_commands ; 
 int /*<<< orphan*/  stdoutmark ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const char* exeName)
{
    FUNC1(exeName);
    FUNC0( "\n");
    FUNC0( "****************************\n");
    FUNC0( "***** Advanced comment *****\n");
    FUNC0( "****************************\n");
    FUNC0( "\n");
    FUNC0( "Which values can [output] have ? \n");
    FUNC0( "---------------------------------\n");
    FUNC0( "[output] : a filename \n");
    FUNC0( "          '%s', or '-' for standard output (pipe mode)\n", stdoutmark);
    FUNC0( "          '%s' to discard output (test mode) \n", NULL_OUTPUT);
    FUNC0( "[output] can be left empty. In this case, it receives the following value :\n");
    FUNC0( "          - if stdout is not the console, then [output] = stdout \n");
    FUNC0( "          - if stdout is console : \n");
    FUNC0( "               + for compression, output to filename%s \n", LZ4_EXTENSION);
    FUNC0( "               + for decompression, output to filename without '%s'\n", LZ4_EXTENSION);
    FUNC0( "                    > if input filename has no '%s' extension : error \n", LZ4_EXTENSION);
    FUNC0( "\n");
    FUNC0( "Compression levels : \n");
    FUNC0( "---------------------\n");
    FUNC0( "-0 ... -2  => Fast compression, all identicals\n");
    FUNC0( "-3 ... -%d => High compression; higher number == more compression but slower\n", LZ4HC_CLEVEL_MAX);
    FUNC0( "\n");
    FUNC0( "stdin, stdout and the console : \n");
    FUNC0( "--------------------------------\n");
    FUNC0( "To protect the console from binary flooding (bad argument mistake)\n");
    FUNC0( "%s will refuse to read from console, or write to console \n", exeName);
    FUNC0( "except if '-c' command is specified, to force output to console \n");
    FUNC0( "\n");
    FUNC0( "Simple example :\n");
    FUNC0( "----------------\n");
    FUNC0( "1 : compress 'filename' fast, using default output name 'filename.lz4'\n");
    FUNC0( "          %s filename\n", exeName);
    FUNC0( "\n");
    FUNC0( "Short arguments can be aggregated. For example :\n");
    FUNC0( "----------------------------------\n");
    FUNC0( "2 : compress 'filename' in high compression mode, overwrite output if exists\n");
    FUNC0( "          %s -9 -f filename \n", exeName);
    FUNC0( "    is equivalent to :\n");
    FUNC0( "          %s -9f filename \n", exeName);
    FUNC0( "\n");
    FUNC0( "%s can be used in 'pure pipe mode'. For example :\n", exeName);
    FUNC0( "-------------------------------------\n");
    FUNC0( "3 : compress data stream from 'generator', send result to 'consumer'\n");
    FUNC0( "          generator | %s | consumer \n", exeName);
    if (g_lz4c_legacy_commands) {
        FUNC0( "\n");
        FUNC0( "***** Warning  ***** \n");
        FUNC0( "Legacy arguments take precedence. Therefore : \n");
        FUNC0( "--------------------------------- \n");
        FUNC0( "          %s -hc filename \n", exeName);
        FUNC0( "means 'compress filename in high compression mode' \n");
        FUNC0( "It is not equivalent to : \n");
        FUNC0( "          %s -h -c filename \n", exeName);
        FUNC0( "which displays help text and exits \n");
    }
    return 0;
}