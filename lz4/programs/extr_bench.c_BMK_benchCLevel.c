
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 int BMK_benchMem (void*,size_t,char const*,int,size_t const*,unsigned int,char const*,int) ;
 int DISPLAY (char*,int ,int ,int ,int ,int ) ;
 int LZ4_GIT_COMMIT_STRING ;
 int LZ4_VERSION_STRING ;
 int SET_REALTIME_PRIORITY ;
 int g_additionalParam ;
 int g_blockSize ;
 int g_displayLevel ;
 int g_nbSeconds ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static void BMK_benchCLevel(void* srcBuffer, size_t benchedSize,
                            const char* displayName, int cLevel, int cLevelLast,
                            const size_t* fileSizes, unsigned nbFiles,
                            const char* dictBuf, int dictSize)
{
    int l;

    const char* pch = strrchr(displayName, '\\');
    if (!pch) pch = strrchr(displayName, '/');
    if (pch) displayName = pch+1;

    SET_REALTIME_PRIORITY;

    if (g_displayLevel == 1 && !g_additionalParam)
        DISPLAY("bench %s %s: input %u bytes, %u seconds, %u KB blocks\n", LZ4_VERSION_STRING, LZ4_GIT_COMMIT_STRING, (U32)benchedSize, g_nbSeconds, (U32)(g_blockSize>>10));

    if (cLevelLast < cLevel) cLevelLast = cLevel;

    for (l=cLevel; l <= cLevelLast; l++) {
        BMK_benchMem(srcBuffer, benchedSize,
                     displayName, l,
                     fileSizes, nbFiles,
                     dictBuf, dictSize);
    }
}
