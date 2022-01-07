
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t dstBufferSize; scalar_t__ srcBuffer; int dstBuffer; int ctx; int srcBufferSize; } ;
typedef TYPE_1__ cRess_t ;
struct TYPE_6__ {unsigned int blockSizeID; } ;
typedef TYPE_2__ LZ4F_frameInfo_t ;
typedef size_t LZ4F_errorCode_t ;
typedef int FILE ;


 int EXM_THROW (int,char*,...) ;
 size_t LZ4F_decompress (int ,int ,size_t*,char*,size_t*,int *) ;
 int LZ4F_getErrorName (size_t) ;
 size_t LZ4F_getFrameInfo (int ,TYPE_2__*,char*,size_t*) ;
 scalar_t__ LZ4F_isError (size_t) ;
 scalar_t__ ferror (int * const) ;
 size_t fread (scalar_t__,int,int ,int * const) ;

int frameCheck(cRess_t ress, FILE* const srcFile, unsigned bsid, size_t blockSize)
{
    LZ4F_errorCode_t nextToLoad = 0;
    size_t curblocksize = 0;
    int partialBlock = 0;


    for (;;) {
        size_t readSize;
        size_t pos = 0;
        size_t decodedBytes = ress.dstBufferSize;
        size_t remaining;
        LZ4F_frameInfo_t frameInfo;


        readSize = fread(ress.srcBuffer, 1, ress.srcBufferSize, srcFile);
        if (!readSize) break;

        while (pos < readSize) {

            if (!nextToLoad) {

                curblocksize = 0;
                remaining = readSize - pos;
                nextToLoad = LZ4F_getFrameInfo(ress.ctx, &frameInfo, (char*)(ress.srcBuffer)+pos, &remaining);
                if (LZ4F_isError(nextToLoad))
                    EXM_THROW(22, "Error getting frame info: %s",
                                LZ4F_getErrorName(nextToLoad));
                if (frameInfo.blockSizeID != bsid)
                    EXM_THROW(23, "Block size ID %u != expected %u",
                                frameInfo.blockSizeID, bsid);
                pos += remaining;

                remaining = nextToLoad;
                decodedBytes = ress.dstBufferSize;
                nextToLoad = LZ4F_decompress(ress.ctx, ress.dstBuffer, &decodedBytes, (char*)(ress.srcBuffer)+pos, &remaining, ((void*)0));
                if (LZ4F_isError(nextToLoad)) EXM_THROW(24, "Decompression error : %s", LZ4F_getErrorName(nextToLoad));
                pos += remaining;
            }
            decodedBytes = ress.dstBufferSize;

            if (nextToLoad > (readSize - pos)) {

                partialBlock = 1;
                remaining = readSize - pos;
            } else {
                if (partialBlock) {
                    partialBlock = 0;
                }
                remaining = nextToLoad;
            }
            nextToLoad = LZ4F_decompress(ress.ctx, ress.dstBuffer, &decodedBytes, (char*)(ress.srcBuffer)+pos, &remaining, ((void*)0));
            if (LZ4F_isError(nextToLoad)) EXM_THROW(24, "Decompression error : %s", LZ4F_getErrorName(nextToLoad));
            curblocksize += decodedBytes;
            pos += remaining;
            if (!partialBlock) {

                if ((curblocksize != 0) && (nextToLoad > 4)) {
                    if (curblocksize != blockSize)
                        EXM_THROW(25, "Block size %u != expected %u, pos %u\n",
                                    (unsigned)curblocksize, (unsigned)blockSize, (unsigned)pos);
                }
                curblocksize = 0;
            }
        }
    }

    if (ferror(srcFile)) EXM_THROW(26, "Read error");

    if (nextToLoad!=0) EXM_THROW(27, "Unfinished stream");

    return 0;
}
