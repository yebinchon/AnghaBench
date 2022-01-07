
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U64 ;
typedef int FILE ;


 int BMK_benchFileTable (char const**,unsigned int,int,int,char*,int) ;
 int BMK_benchFilesSeparately (char const**,unsigned int,int,int,char*,int) ;
 int BMK_syntheticTest (int,int,double const,char*,int) ;
 int DISPLAYLEVEL (int,char*,int,int) ;
 int EXM_THROW (int,char*) ;
 int LZ4HC_CLEVEL_MAX ;
 int LZ4_MAX_DICT_SIZE ;
 int SEEK_SET ;
 scalar_t__ UTIL_fseek (int *,int,int ) ;
 int UTIL_getFileSize (char const*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (char*,int,int,int *) ;
 int free (char*) ;
 scalar_t__ g_benchSeparately ;
 scalar_t__ g_compressibilityDefault ;
 scalar_t__ malloc (int) ;

int BMK_benchFiles(const char** fileNamesTable, unsigned nbFiles,
                   int cLevel, int cLevelLast,
                   const char* dictFileName)
{
    double const compressibility = (double)g_compressibilityDefault / 100;
    char* dictBuf = ((void*)0);
    int dictSize = 0;

    if (cLevel > LZ4HC_CLEVEL_MAX) cLevel = LZ4HC_CLEVEL_MAX;
    if (cLevelLast > LZ4HC_CLEVEL_MAX) cLevelLast = LZ4HC_CLEVEL_MAX;
    if (cLevelLast < cLevel) cLevelLast = cLevel;
    if (cLevelLast > cLevel) DISPLAYLEVEL(2, "Benchmarking levels from %d to %d\n", cLevel, cLevelLast);

    if (dictFileName) {
        FILE* dictFile = ((void*)0);
        U64 dictFileSize = UTIL_getFileSize(dictFileName);
        if (!dictFileSize) EXM_THROW(25, "Dictionary error : could not stat dictionary file");

        dictFile = fopen(dictFileName, "rb");
        if (!dictFile) EXM_THROW(25, "Dictionary error : could not open dictionary file");

        if (dictFileSize > LZ4_MAX_DICT_SIZE) {
            dictSize = LZ4_MAX_DICT_SIZE;
            if (UTIL_fseek(dictFile, dictFileSize - dictSize, SEEK_SET))
                EXM_THROW(25, "Dictionary error : could not seek dictionary file");
        } else {
            dictSize = (int)dictFileSize;
        }

        dictBuf = (char *)malloc(dictSize);
        if (!dictBuf) EXM_THROW(25, "Allocation error : not enough memory");

        if (fread(dictBuf, 1, dictSize, dictFile) != (size_t)dictSize)
            EXM_THROW(25, "Dictionary error : could not read dictionary file");

        fclose(dictFile);
    }

    if (nbFiles == 0)
        BMK_syntheticTest(cLevel, cLevelLast, compressibility, dictBuf, dictSize);
    else {
        if (g_benchSeparately)
            BMK_benchFilesSeparately(fileNamesTable, nbFiles, cLevel, cLevelLast, dictBuf, dictSize);
        else
            BMK_benchFileTable(fileNamesTable, nbFiles, cLevel, cLevelLast, dictBuf, dictSize);
    }

    free(dictBuf);
    return 0;
}
