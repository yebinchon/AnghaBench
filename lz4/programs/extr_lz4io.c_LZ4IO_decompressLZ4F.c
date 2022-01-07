
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* srcBuffer; size_t dstBufferSize; scalar_t__ srcBufferSize; int dstBuffer; int dictBufferSize; int dictBuffer; int dCtx; } ;
typedef TYPE_1__ dRess_t ;
struct TYPE_7__ {int testMode; } ;
typedef TYPE_2__ LZ4IO_prefs_t ;
typedef scalar_t__ LZ4F_errorCode_t ;
typedef int FILE ;


 int DISPLAYUPDATE (int,char*,unsigned int) ;
 int EXM_THROW (int,char*,...) ;
 scalar_t__ LZ4F_decompress_usingDict (int ,int ,size_t*,char*,size_t*,int ,int ,int *) ;
 int LZ4F_getErrorName (scalar_t__) ;
 scalar_t__ LZ4F_isError (scalar_t__) ;
 int LZ4IO_MAGICNUMBER ;
 unsigned int LZ4IO_fwriteSparse (TYPE_2__* const,int *,int ,size_t,unsigned int) ;
 int LZ4IO_fwriteSparseEnd (int *,unsigned int) ;
 int LZ4IO_writeLE32 (char*,int ) ;
 size_t MAGICNUMBER_SIZE ;
 scalar_t__ ferror (int *) ;
 size_t fread (char*,int,scalar_t__,int *) ;

__attribute__((used)) static unsigned long long LZ4IO_decompressLZ4F(LZ4IO_prefs_t* const prefs, dRess_t ress, FILE* srcFile, FILE* dstFile)
{
    unsigned long long filesize = 0;
    LZ4F_errorCode_t nextToLoad;
    unsigned storedSkips = 0;


    { size_t inSize = MAGICNUMBER_SIZE;
        size_t outSize= 0;
        LZ4IO_writeLE32(ress.srcBuffer, LZ4IO_MAGICNUMBER);
        nextToLoad = LZ4F_decompress_usingDict(ress.dCtx, ress.dstBuffer, &outSize, ress.srcBuffer, &inSize, ress.dictBuffer, ress.dictBufferSize, ((void*)0));
        if (LZ4F_isError(nextToLoad)) EXM_THROW(62, "Header error : %s", LZ4F_getErrorName(nextToLoad));
    }


    for (;nextToLoad;) {
        size_t readSize;
        size_t pos = 0;
        size_t decodedBytes = ress.dstBufferSize;


        if (nextToLoad > ress.srcBufferSize) nextToLoad = ress.srcBufferSize;
        readSize = fread(ress.srcBuffer, 1, nextToLoad, srcFile);
        if (!readSize) break;

        while ((pos < readSize) || (decodedBytes == ress.dstBufferSize)) {

            size_t remaining = readSize - pos;
            decodedBytes = ress.dstBufferSize;
            nextToLoad = LZ4F_decompress_usingDict(ress.dCtx, ress.dstBuffer, &decodedBytes, (char*)(ress.srcBuffer)+pos, &remaining, ress.dictBuffer, ress.dictBufferSize, ((void*)0));
            if (LZ4F_isError(nextToLoad)) EXM_THROW(66, "Decompression error : %s", LZ4F_getErrorName(nextToLoad));
            pos += remaining;


            if (decodedBytes) {
                if (!prefs->testMode)
                    storedSkips = LZ4IO_fwriteSparse(prefs, dstFile, ress.dstBuffer, decodedBytes, storedSkips);
                filesize += decodedBytes;
                DISPLAYUPDATE(2, "\rDecompressed : %u MB  ", (unsigned)(filesize>>20));
            }

            if (!nextToLoad) break;
        }
    }

    if (ferror(srcFile)) EXM_THROW(67, "Read error");

    if (!prefs->testMode) LZ4IO_fwriteSparseEnd(dstFile, storedSkips);
    if (nextToLoad!=0) EXM_THROW(68, "Unfinished stream");

    return filesize;
}
