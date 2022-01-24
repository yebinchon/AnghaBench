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
 int DICTIONARY_BYTES ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,int,int) ; 

int FUNC10(int argc, char* argv[])
{
    char inpFilename[256] = { 0 };
    char lz4Filename[256] = { 0 };
    char decFilename[256] = { 0 };
    char dictFilename[256] = { 0 };
    int offset;
    int length;
    char dict[DICTIONARY_BYTES];
    int dictSize;

    if(argc < 5) {
        FUNC4("Usage: %s input dictionary offset length", argv[0]);
        return 0;
    }

    FUNC7(inpFilename, 256, "%s", argv[1]);
    FUNC7(lz4Filename, 256, "%s.lz4s-%d", argv[1], BLOCK_BYTES);
    FUNC7(decFilename, 256, "%s.lz4s-%d.dec", argv[1], BLOCK_BYTES);
    FUNC7(dictFilename, 256, "%s", argv[2]);
    offset = FUNC0(argv[3]);
    length = FUNC0(argv[4]);

    FUNC4("inp    = [%s]\n", inpFilename);
    FUNC4("lz4    = [%s]\n", lz4Filename);
    FUNC4("dec    = [%s]\n", decFilename);
    FUNC4("dict   = [%s]\n", dictFilename);
    FUNC4("offset = [%d]\n", offset);
    FUNC4("length = [%d]\n", length);

    /* Load dictionary */
    {
        FILE* dictFp = FUNC3(dictFilename, "rb");
        dictSize = (int)FUNC5(dictFp, dict, DICTIONARY_BYTES);
        FUNC2(dictFp);
    }

    /* compress */
    {
        FILE* inpFp = FUNC3(inpFilename, "rb");
        FILE* outFp = FUNC3(lz4Filename, "wb");

        FUNC4("compress : %s -> %s\n", inpFilename, lz4Filename);
        FUNC8(outFp, inpFp, dict, dictSize);
        FUNC4("compress : done\n");

        FUNC2(outFp);
        FUNC2(inpFp);
    }

    /* decompress */
    {
        FILE* inpFp = FUNC3(lz4Filename, "rb");
        FILE* outFp = FUNC3(decFilename, "wb");

        FUNC4("decompress : %s -> %s\n", lz4Filename, decFilename);
        FUNC9(outFp, inpFp, dict, DICTIONARY_BYTES, offset, length);
        FUNC4("decompress : done\n");

        FUNC2(outFp);
        FUNC2(inpFp);
    }

    /* verify */
    {
        FILE* inpFp = FUNC3(inpFilename, "rb");
        FILE* decFp = FUNC3(decFilename, "rb");
        FUNC6(inpFp, offset, SEEK_SET);

        FUNC4("verify : %s <-> %s\n", inpFilename, decFilename);
        const int cmp = FUNC1(inpFp, decFp, length);
        if(0 == cmp) {
            FUNC4("verify : OK\n");
        } else {
            FUNC4("verify : NG\n");
        }

        FUNC2(decFp);
        FUNC2(inpFp);
    }

    return 0;
}