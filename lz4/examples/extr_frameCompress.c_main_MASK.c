#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int error; double size_in; scalar_t__ size_out; } ;
typedef  TYPE_1__ compressResult_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const) ; 
 int FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*) ; 

int FUNC7(int argc, const char **argv) {
    char inpFilename[256] = { 0 };
    char lz4Filename[256] = { 0 };
    char decFilename[256] = { 0 };

    if (argc < 2) {
        FUNC5("Please specify input filename\n");
        return 0;
    }

    FUNC6(inpFilename, 256, "%s", argv[1]);
    FUNC6(lz4Filename, 256, "%s.lz4", argv[1]);
    FUNC6(decFilename, 256, "%s.lz4.dec", argv[1]);

    FUNC5("inp = [%s]\n", inpFilename);
    FUNC5("lz4 = [%s]\n", lz4Filename);
    FUNC5("dec = [%s]\n", decFilename);

    /* compress */
    {   FILE* const inpFp = FUNC4(inpFilename, "rb");
        FILE* const outFp = FUNC4(lz4Filename, "wb");

        FUNC5("compress : %s -> %s\n", inpFilename, lz4Filename);
        compressResult_t const ret = FUNC1(inpFp, outFp);

        FUNC3(outFp);
        FUNC3(inpFp);

        if (ret.error) {
            FUNC5("compress : failed with code %i\n", ret.error);
            return ret.error;
        }
        FUNC5("%s: %zu → %zu bytes, %.1f%%\n",
            inpFilename,
            (size_t)ret.size_in, (size_t)ret.size_out,  /* might overflow is size_t is 32 bits and size_{in,out} > 4 GB */
            (double)ret.size_out / ret.size_in * 100);
        FUNC5("compress : done\n");
    }

    /* decompress */
    {   FILE* const inpFp = FUNC4(lz4Filename, "rb");
        FILE* const outFp = FUNC4(decFilename, "wb");

        FUNC5("decompress : %s -> %s\n", lz4Filename, decFilename);
        int const ret = FUNC2(inpFp, outFp);

        FUNC3(outFp);
        FUNC3(inpFp);

        if (ret) {
            FUNC5("decompress : failed with code %i\n", ret);
            return ret;
        }
        FUNC5("decompress : done\n");
    }

    /* verify */
    {   FILE* const inpFp = FUNC4(inpFilename, "rb");
        FILE* const decFp = FUNC4(decFilename, "rb");

        FUNC5("verify : %s <-> %s\n", inpFilename, decFilename);
        int const cmp = FUNC0(inpFp, decFp);

        FUNC3(decFp);
        FUNC3(inpFp);

        if (cmp) {
            FUNC5("corruption detected : decompressed file differs from original\n");
            return cmp;
        }
        FUNC5("verify : OK\n");
    }

    return 0;
}