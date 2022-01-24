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
 char* WELCOME_MESSAGE ; 
 scalar_t__ g_lz4c_legacy_commands ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const char* exeName)
{
    FUNC0(WELCOME_MESSAGE);
    FUNC1(exeName);
    FUNC0( "\n");
    FUNC0( "Advanced arguments :\n");
    FUNC0( " -V     : display Version number and exit \n");
    FUNC0( " -v     : verbose mode \n");
    FUNC0( " -q     : suppress warnings; specify twice to suppress errors too\n");
    FUNC0( " -c     : force write to standard output, even if it is the console\n");
    FUNC0( " -t     : test compressed file integrity\n");
    FUNC0( " -m     : multiple input files (implies automatic output filenames)\n");
#ifdef UTIL_HAS_CREATEFILELIST
    DISPLAY( " -r     : operate recursively on directories (sets also -m) \n");
#endif
    FUNC0( " -l     : compress using Legacy format (Linux kernel compression)\n");
    FUNC0( " -B#    : cut file into blocks of size # bytes [32+] \n");
    FUNC0( "                     or predefined block size [4-7] (default: 7) \n");
    FUNC0( " -BI    : Block Independence (default) \n");
    FUNC0( " -BD    : Block dependency (improves compression ratio) \n");
    FUNC0( " -BX    : enable block checksum (default:disabled) \n");
    FUNC0( "--no-frame-crc : disable stream checksum (default:enabled) \n");
    FUNC0( "--content-size : compressed frame includes original size (default:not present)\n");
    FUNC0( "--list FILE : lists information about .lz4 files (useful for files compressed with --content-size flag)\n");
    FUNC0( "--[no-]sparse  : sparse mode (default:enabled on file, disabled on stdout)\n");
    FUNC0( "--favor-decSpeed: compressed files decompress faster, but are less compressed \n");
    FUNC0( "--fast[=#]: switch to ultra fast compression level (default: %i)\n", 1);
    FUNC0( "--best  : same as -%d\n", LZ4HC_CLEVEL_MAX);
    FUNC0( "Benchmark arguments : \n");
    FUNC0( " -b#    : benchmark file(s), using # compression level (default : 1) \n");
    FUNC0( " -e#    : test all compression levels from -bX to # (default : 1)\n");
    FUNC0( " -i#    : minimum evaluation time in seconds (default : 3s) \n");
    if (g_lz4c_legacy_commands) {
        FUNC0( "Legacy arguments : \n");
        FUNC0( " -c0    : fast compression \n");
        FUNC0( " -c1    : high compression \n");
        FUNC0( " -c2,-hc: very high compression \n");
        FUNC0( " -y     : overwrite output without prompting \n");
    }
    return 0;
}