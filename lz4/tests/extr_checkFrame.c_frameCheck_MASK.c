#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t dstBufferSize; scalar_t__ srcBuffer; int /*<<< orphan*/  dstBuffer; int /*<<< orphan*/  ctx; int /*<<< orphan*/  srcBufferSize; } ;
typedef  TYPE_1__ cRess_t ;
struct TYPE_6__ {unsigned int blockSizeID; } ;
typedef  TYPE_2__ LZ4F_frameInfo_t ;
typedef  size_t LZ4F_errorCode_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,char*,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,char*,size_t*) ; 
 scalar_t__ FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ * const) ; 
 size_t FUNC6 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ * const) ; 

int FUNC7(cRess_t ress, FILE* const srcFile, unsigned bsid, size_t blockSize)
{
    LZ4F_errorCode_t nextToLoad = 0;
    size_t curblocksize = 0;
    int partialBlock = 0;

    /* Main Loop */
    for (;;) {
        size_t readSize;
        size_t pos = 0;
        size_t decodedBytes = ress.dstBufferSize;
        size_t remaining;
        LZ4F_frameInfo_t frameInfo;

        /* Read input */
        readSize = FUNC6(ress.srcBuffer, 1, ress.srcBufferSize, srcFile);
        if (!readSize) break;   /* reached end of file or stream */

        while (pos < readSize) {  /* still to read */
            /* Decode Input (at least partially) */
            if (!nextToLoad) {
                /* LZ4F_decompress returned 0 : starting new frame */
                curblocksize = 0;
                remaining = readSize - pos;
                nextToLoad = FUNC3(ress.ctx, &frameInfo, (char*)(ress.srcBuffer)+pos, &remaining);
                if (FUNC4(nextToLoad))
                    FUNC0(22, "Error getting frame info: %s",
                                FUNC2(nextToLoad));
                if (frameInfo.blockSizeID != bsid)
                    FUNC0(23, "Block size ID %u != expected %u",
                                frameInfo.blockSizeID, bsid);
                pos += remaining;
                /* nextToLoad should be block header size */
                remaining = nextToLoad;
                decodedBytes = ress.dstBufferSize;
                nextToLoad = FUNC1(ress.ctx, ress.dstBuffer, &decodedBytes, (char*)(ress.srcBuffer)+pos, &remaining, NULL);
                if (FUNC4(nextToLoad)) FUNC0(24, "Decompression error : %s", FUNC2(nextToLoad));
                pos += remaining;
            }
            decodedBytes = ress.dstBufferSize;
            /* nextToLoad should be just enough to cover the next block */
            if (nextToLoad > (readSize - pos)) {
                /* block is not fully contained in current buffer */
                partialBlock = 1;
                remaining = readSize - pos;
            } else {
                if (partialBlock) {
                    partialBlock = 0;
                }
                remaining = nextToLoad;
            }
            nextToLoad = FUNC1(ress.ctx, ress.dstBuffer, &decodedBytes, (char*)(ress.srcBuffer)+pos, &remaining, NULL);
            if (FUNC4(nextToLoad)) FUNC0(24, "Decompression error : %s", FUNC2(nextToLoad));
            curblocksize += decodedBytes;
            pos += remaining;
            if (!partialBlock) {
                /* detect small block due to end of frame; the final 4-byte frame checksum could be left in the buffer */
                if ((curblocksize != 0) && (nextToLoad > 4)) {
                    if (curblocksize != blockSize)
                        FUNC0(25, "Block size %u != expected %u, pos %u\n",
                                    (unsigned)curblocksize, (unsigned)blockSize, (unsigned)pos);
                }
                curblocksize = 0;
            }
        }
    }
    /* can be out because readSize == 0, which could be an fread() error */
    if (FUNC5(srcFile)) FUNC0(26, "Read error");

    if (nextToLoad!=0) FUNC0(27, "Unfinished stream");

    return 0;
}