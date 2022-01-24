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
typedef  int /*<<< orphan*/  cRess_t ;
typedef  int /*<<< orphan*/  LZ4IO_prefs_t ;

/* Variables and functions */
 size_t FNSPACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (size_t) ; 
 char* stdoutmark ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 size_t FUNC8 (char const*) ; 

int FUNC9(LZ4IO_prefs_t* const prefs,
                              const char** inFileNamesTable, int ifntSize,
                              const char* suffix,
                              int compressionLevel)
{
    int i;
    int missed_files = 0;
    char* dstFileName = (char*)FUNC4(FNSPACE);
    size_t ofnSize = FNSPACE;
    const size_t suffixSize = FUNC8(suffix);
    cRess_t ress;

    if (dstFileName == NULL) return ifntSize;   /* not enough memory */
    ress = FUNC1(prefs);

    /* loop on each file */
    for (i=0; i<ifntSize; i++) {
        size_t const ifnSize = FUNC8(inFileNamesTable[i]);
        if (!FUNC6(suffix, stdoutmark)) {
            missed_files += FUNC0(prefs, ress,
                                    inFileNamesTable[i], stdoutmark,
                                    compressionLevel);
            continue;
        }
        if (ofnSize <= ifnSize+suffixSize+1) {
            FUNC3(dstFileName);
            ofnSize = ifnSize + 20;
            dstFileName = (char*)FUNC4(ofnSize);
            if (dstFileName==NULL) {
                FUNC2(ress);
                return ifntSize;
        }   }
        FUNC7(dstFileName, inFileNamesTable[i]);
        FUNC5(dstFileName, suffix);

        missed_files += FUNC0(prefs, ress,
                                inFileNamesTable[i], dstFileName,
                                compressionLevel);
    }

    /* Close & Free */
    FUNC2(ress);
    FUNC3(dstFileName);

    return missed_files;
}