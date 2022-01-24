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
 int /*<<< orphan*/  FUNC0 (char const**,int,int,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int) ; 
 int LZ4HC_CLEVEL_MAX ; 

int FUNC2(const char** fileNamesTable, unsigned nbFiles,
                   int cLevel, int cLevelLast,
                   const char* dictBuf, int dictSize)
{
    unsigned fileNb;
    if (cLevel > LZ4HC_CLEVEL_MAX) cLevel = LZ4HC_CLEVEL_MAX;
    if (cLevelLast > LZ4HC_CLEVEL_MAX) cLevelLast = LZ4HC_CLEVEL_MAX;
    if (cLevelLast < cLevel) cLevelLast = cLevel;
    if (cLevelLast > cLevel) FUNC1(2, "Benchmarking levels from %d to %d\n", cLevel, cLevelLast);

    for (fileNb=0; fileNb<nbFiles; fileNb++)
        FUNC0(fileNamesTable+fileNb, 1, cLevel, cLevelLast, dictBuf, dictSize);

    return 0;
}