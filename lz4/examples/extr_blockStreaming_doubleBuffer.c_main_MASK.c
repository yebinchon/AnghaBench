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
 int BLOCK_BYTES ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC7(int argc, char* argv[])
{
    char inpFilename[256] = { 0 };
    char lz4Filename[256] = { 0 };
    char decFilename[256] = { 0 };

    if(argc < 2) {
        FUNC3("Please specify input filename\n");
        return 0;
    }

    FUNC4(inpFilename, 256, "%s", argv[1]);
    FUNC4(lz4Filename, 256, "%s.lz4s-%d", argv[1], BLOCK_BYTES);
    FUNC4(decFilename, 256, "%s.lz4s-%d.dec", argv[1], BLOCK_BYTES);

    FUNC3("inp = [%s]\n", inpFilename);
    FUNC3("lz4 = [%s]\n", lz4Filename);
    FUNC3("dec = [%s]\n", decFilename);

    // compress
    {
        FILE* inpFp = FUNC2(inpFilename, "rb");
        FILE* outFp = FUNC2(lz4Filename, "wb");

        FUNC3("compress : %s -> %s\n", inpFilename, lz4Filename);
        FUNC5(outFp, inpFp);
        FUNC3("compress : done\n");

        FUNC1(outFp);
        FUNC1(inpFp);
    }

    // decompress
    {
        FILE* inpFp = FUNC2(lz4Filename, "rb");
        FILE* outFp = FUNC2(decFilename, "wb");

        FUNC3("decompress : %s -> %s\n", lz4Filename, decFilename);
        FUNC6(outFp, inpFp);
        FUNC3("decompress : done\n");

        FUNC1(outFp);
        FUNC1(inpFp);
    }

    // verify
    {
        FILE* inpFp = FUNC2(inpFilename, "rb");
        FILE* decFp = FUNC2(decFilename, "rb");

        FUNC3("verify : %s <-> %s\n", inpFilename, decFilename);
        const int cmp = FUNC0(inpFp, decFp);
        if(0 == cmp) {
            FUNC3("verify : OK\n");
        } else {
            FUNC3("verify : NG\n");
        }

        FUNC1(decFp);
        FUNC1(inpFp);
    }

    return 0;
}