
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mfName ;
typedef int U64 ;
typedef int U32 ;


 int BMK_benchCLevel (void*,size_t,char const*,int,int,size_t*,unsigned int,char const*,int) ;
 int BMK_findMaxMem (int const) ;
 int BMK_loadFiles (void*,size_t,size_t*,char const**,unsigned int) ;
 int DISPLAY (char*,int ) ;
 int EXM_THROW (int,char*) ;
 size_t LZ4_MAX_INPUT_SIZE ;
 int UTIL_getTotalFileSize (char const**,unsigned int) ;
 int free (size_t*) ;
 void* malloc (size_t) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static void BMK_benchFileTable(const char** fileNamesTable, unsigned nbFiles,
                               int cLevel, int cLevelLast,
                               const char* dictBuf, int dictSize)
{
    void* srcBuffer;
    size_t benchedSize;
    size_t* fileSizes = (size_t*)malloc(nbFiles * sizeof(size_t));
    U64 const totalSizeToLoad = UTIL_getTotalFileSize(fileNamesTable, nbFiles);
    char mfName[20] = {0};

    if (!fileSizes) EXM_THROW(12, "not enough memory for fileSizes");


    benchedSize = BMK_findMaxMem(totalSizeToLoad * 3) / 3;
    if (benchedSize==0) EXM_THROW(12, "not enough memory");
    if ((U64)benchedSize > totalSizeToLoad) benchedSize = (size_t)totalSizeToLoad;
    if (benchedSize > LZ4_MAX_INPUT_SIZE) {
        benchedSize = LZ4_MAX_INPUT_SIZE;
        DISPLAY("File(s) bigger than LZ4's max input size; testing %u MB only...\n", (U32)(benchedSize >> 20));
    } else {
        if (benchedSize < totalSizeToLoad)
            DISPLAY("Not enough memory; testing %u MB only...\n", (U32)(benchedSize >> 20));
    }
    srcBuffer = malloc(benchedSize + !benchedSize);
    if (!srcBuffer) EXM_THROW(12, "not enough memory");


    BMK_loadFiles(srcBuffer, benchedSize, fileSizes, fileNamesTable, nbFiles);


    snprintf (mfName, sizeof(mfName), " %u files", nbFiles);
    { const char* displayName = (nbFiles > 1) ? mfName : fileNamesTable[0];
        BMK_benchCLevel(srcBuffer, benchedSize,
                        displayName, cLevel, cLevelLast,
                        fileSizes, nbFiles,
                        dictBuf, dictSize);
    }


    free(srcBuffer);
    free(fileSizes);
}
