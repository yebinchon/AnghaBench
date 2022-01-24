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
typedef  int /*<<< orphan*/  mfName ;
typedef  int U64 ;
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t,char const*,int,int,size_t*,unsigned int,char const*,int) ; 
 int FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t,size_t*,char const**,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 size_t LZ4_MAX_INPUT_SIZE ; 
 int FUNC5 (char const**,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (size_t*) ; 
 void* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static void FUNC9(const char** fileNamesTable, unsigned nbFiles,
                               int cLevel, int cLevelLast,
                               const char* dictBuf, int dictSize)
{
    void* srcBuffer;
    size_t benchedSize;
    size_t* fileSizes = (size_t*)FUNC7(nbFiles * sizeof(size_t));
    U64 const totalSizeToLoad = FUNC5(fileNamesTable, nbFiles);
    char mfName[20] = {0};

    if (!fileSizes) FUNC4(12, "not enough memory for fileSizes");

    /* Memory allocation & restrictions */
    benchedSize = FUNC1(totalSizeToLoad * 3) / 3;
    if (benchedSize==0) FUNC4(12, "not enough memory");
    if ((U64)benchedSize > totalSizeToLoad) benchedSize = (size_t)totalSizeToLoad;
    if (benchedSize > LZ4_MAX_INPUT_SIZE) {
        benchedSize = LZ4_MAX_INPUT_SIZE;
        FUNC3("File(s) bigger than LZ4's max input size; testing %u MB only...\n", (U32)(benchedSize >> 20));
    } else {
        if (benchedSize < totalSizeToLoad)
            FUNC3("Not enough memory; testing %u MB only...\n", (U32)(benchedSize >> 20));
    }
    srcBuffer = FUNC7(benchedSize + !benchedSize);   /* avoid alloc of zero */
    if (!srcBuffer) FUNC4(12, "not enough memory");

    /* Load input buffer */
    FUNC2(srcBuffer, benchedSize, fileSizes, fileNamesTable, nbFiles);

    /* Bench */
    FUNC8 (mfName, sizeof(mfName), " %u files", nbFiles);
    {   const char* displayName = (nbFiles > 1) ? mfName : fileNamesTable[0];
        FUNC0(srcBuffer, benchedSize,
                        displayName, cLevel, cLevelLast,
                        fileSizes, nbFiles,
                        dictBuf, dictSize);
    }

    /* clean up */
    FUNC6(srcBuffer);
    FUNC6(fileSizes);
}