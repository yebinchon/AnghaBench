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
typedef  size_t U64 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 size_t FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 
 size_t FUNC7 (char*,int,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void* buffer, size_t bufferSize,
                          size_t* fileSizes,
                          const char** fileNamesTable, unsigned nbFiles)
{
    size_t pos = 0, totalSize = 0;
    unsigned n;
    for (n=0; n<nbFiles; n++) {
        FILE* f;
        U64 fileSize = FUNC3(fileNamesTable[n]);
        if (FUNC4(fileNamesTable[n])) {
            FUNC0(2, "Ignoring %s directory...       \n", fileNamesTable[n]);
            fileSizes[n] = 0;
            continue;
        }
        f = FUNC6(fileNamesTable[n], "rb");
        if (f==NULL) FUNC2(10, "impossible to open file %s", fileNamesTable[n]);
        FUNC1(2, "Loading %s...       \r", fileNamesTable[n]);
        if (fileSize > bufferSize-pos) { /* buffer too small - stop after this file */
            fileSize = bufferSize-pos;
            nbFiles=n;
        }
        { size_t const readSize = FUNC7(((char*)buffer)+pos, 1, (size_t)fileSize, f);
          if (readSize != (size_t)fileSize) FUNC2(11, "could not read %s", fileNamesTable[n]);
          pos += readSize; }
        fileSizes[n] = (size_t)fileSize;
        totalSize += (size_t)fileSize;
        FUNC5(f);
    }

    if (totalSize == 0) FUNC2(12, "no data to bench");
}