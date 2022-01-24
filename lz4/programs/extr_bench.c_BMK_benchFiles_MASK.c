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
typedef  int U64 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**,unsigned int,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const**,unsigned int,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,double const,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int LZ4HC_CLEVEL_MAX ; 
 int LZ4_MAX_DICT_SIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char*) ; 
 size_t FUNC9 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ g_benchSeparately ; 
 scalar_t__ g_compressibilityDefault ; 
 scalar_t__ FUNC11 (int) ; 

int FUNC12(const char** fileNamesTable, unsigned nbFiles,
                   int cLevel, int cLevelLast,
                   const char* dictFileName)
{
    double const compressibility = (double)g_compressibilityDefault / 100;
    char* dictBuf = NULL;
    int dictSize = 0;

    if (cLevel > LZ4HC_CLEVEL_MAX) cLevel = LZ4HC_CLEVEL_MAX;
    if (cLevelLast > LZ4HC_CLEVEL_MAX) cLevelLast = LZ4HC_CLEVEL_MAX;
    if (cLevelLast < cLevel) cLevelLast = cLevel;
    if (cLevelLast > cLevel) FUNC3(2, "Benchmarking levels from %d to %d\n", cLevel, cLevelLast);

    if (dictFileName) {
        FILE* dictFile = NULL;
        U64 dictFileSize = FUNC6(dictFileName);
        if (!dictFileSize) FUNC4(25, "Dictionary error : could not stat dictionary file");

        dictFile = FUNC8(dictFileName, "rb");
        if (!dictFile) FUNC4(25, "Dictionary error : could not open dictionary file");

        if (dictFileSize > LZ4_MAX_DICT_SIZE) {
            dictSize = LZ4_MAX_DICT_SIZE;
            if (FUNC5(dictFile, dictFileSize - dictSize, SEEK_SET))
                FUNC4(25, "Dictionary error : could not seek dictionary file");
        } else {
            dictSize = (int)dictFileSize;
        }

        dictBuf = (char *)FUNC11(dictSize);
        if (!dictBuf) FUNC4(25, "Allocation error : not enough memory");

        if (FUNC9(dictBuf, 1, dictSize, dictFile) != (size_t)dictSize)
            FUNC4(25, "Dictionary error : could not read dictionary file");

        FUNC7(dictFile);
    }

    if (nbFiles == 0)
        FUNC2(cLevel, cLevelLast, compressibility, dictBuf, dictSize);
    else {
        if (g_benchSeparately)
            FUNC1(fileNamesTable, nbFiles, cLevel, cLevelLast, dictBuf, dictSize);
        else
            FUNC0(fileNamesTable, nbFiles, cLevel, cLevelLast, dictBuf, dictSize);
    }

    FUNC10(dictBuf);
    return 0;
}