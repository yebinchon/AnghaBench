
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BMK_benchFileTable (char const**,int,int,int,char const*,int) ;
 int DISPLAYLEVEL (int,char*,int,int) ;
 int LZ4HC_CLEVEL_MAX ;

int BMK_benchFilesSeparately(const char** fileNamesTable, unsigned nbFiles,
                   int cLevel, int cLevelLast,
                   const char* dictBuf, int dictSize)
{
    unsigned fileNb;
    if (cLevel > LZ4HC_CLEVEL_MAX) cLevel = LZ4HC_CLEVEL_MAX;
    if (cLevelLast > LZ4HC_CLEVEL_MAX) cLevelLast = LZ4HC_CLEVEL_MAX;
    if (cLevelLast < cLevel) cLevelLast = cLevel;
    if (cLevelLast > cLevel) DISPLAYLEVEL(2, "Benchmarking levels from %d to %d\n", cLevel, cLevelLast);

    for (fileNb=0; fileNb<nbFiles; fileNb++)
        BMK_benchFileTable(fileNamesTable+fileNb, 1, cLevel, cLevelLast, dictBuf, dictSize);

    return 0;
}
