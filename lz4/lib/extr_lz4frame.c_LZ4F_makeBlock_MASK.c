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
typedef  scalar_t__ (* compressFunc_t ) (void*,char const*,char*,int,int,int,int /*<<< orphan*/  const*) ;
typedef  int U32 ;
typedef  scalar_t__ LZ4F_blockChecksum_t ;
typedef  int /*<<< orphan*/  LZ4F_CDict ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int BFSize ; 
 int BHSize ; 
 int LZ4F_BLOCKUNCOMPRESSED_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const,int const) ; 
 int FUNC1 (int /*<<< orphan*/ * const,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,void const*,size_t) ; 

__attribute__((used)) static size_t FUNC3(void* dst,
                       const void* src, size_t srcSize,
                             compressFunc_t compress, void* lz4ctx, int level,
                       const LZ4F_CDict* cdict,
                             LZ4F_blockChecksum_t crcFlag)
{
    BYTE* const cSizePtr = (BYTE*)dst;
    U32 cSize = (U32)compress(lz4ctx, (const char*)src, (char*)(cSizePtr+BHSize),
                                      (int)(srcSize), (int)(srcSize-1),
                                      level, cdict);
    if (cSize == 0) {  /* compression failed */
        cSize = (U32)srcSize;
        FUNC0(cSizePtr, cSize | LZ4F_BLOCKUNCOMPRESSED_FLAG);
        FUNC2(cSizePtr+BHSize, src, srcSize);
    } else {
        FUNC0(cSizePtr, cSize);
    }
    if (crcFlag) {
        U32 const crc32 = FUNC1(cSizePtr+BHSize, cSize, 0);  /* checksum of compressed data */
        FUNC0(cSizePtr+BHSize+cSize, crc32);
    }
    return BHSize + cSize + ((U32)crcFlag)*BFSize;
}