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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const) ; 

int FUNC9(int argc, const char** argv)
{
    char inpFilename[256] = { 0 };
    char lz4Filename[256] = { 0 };
    char decFilename[256] = { 0 };
    unsigned fileID = 1;
    unsigned pause = 0;


    if(argc < 2) {
        FUNC4("Please specify input filename\n");
        return 0;
    }

    if (!FUNC6(argv[1], "-p")) { pause = 1; fileID = 2; }

    FUNC5(inpFilename, 256, "%s", argv[fileID]);
    FUNC5(lz4Filename, 256, "%s.lz4s-%d", argv[fileID], 9);
    FUNC5(decFilename, 256, "%s.lz4s-%d.dec", argv[fileID], 9);

    FUNC4("input   = [%s]\n", inpFilename);
    FUNC4("lz4     = [%s]\n", lz4Filename);
    FUNC4("decoded = [%s]\n", decFilename);

    // compress
    {   FILE* const inpFp = FUNC2(inpFilename, "rb");
        FILE* const outFp = FUNC2(lz4Filename, "wb");

        FUNC7(outFp, inpFp);

        FUNC1(outFp);
        FUNC1(inpFp);
    }

    // decompress
    {   FILE* const inpFp = FUNC2(lz4Filename, "rb");
        FILE* const outFp = FUNC2(decFilename, "wb");

        FUNC8(outFp, inpFp);

        FUNC1(outFp);
        FUNC1(inpFp);
    }

    // verify
    {   FILE* const inpFp = FUNC2(inpFilename, "rb");
        FILE* const decFp = FUNC2(decFilename, "rb");

        const size_t cmp = FUNC0(inpFp, decFp);
        if(0 == cmp) {
            FUNC4("Verify : OK\n");
        } else {
            FUNC4("Verify : NG : error at pos %u\n", (unsigned)cmp-1);
        }

        FUNC1(decFp);
        FUNC1(inpFp);
    }

    if (pause) {
        int unused;
        FUNC4("Press enter to continue ...\n");
        unused = FUNC3(); (void)unused;   /* silence static analyzer */
    }

    return 0;
}