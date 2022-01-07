
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 unsigned int const LEGACY_MAGICNUMBER ;
 unsigned int const LZ4IO_MAGICNUMBER ;
 int LZ4IO_STATIC_ASSERT (int) ;
 scalar_t__ LZ4IO_isSkippableMagicNumber (unsigned int const) ;
 unsigned int LZ4IO_readLE32 (unsigned char**) ;
 int LZIO_LEGACY_BLOCK_HEADER_SIZE ;
 int MAGICNUMBER_SIZE ;
 int SEEK_CUR ;
 scalar_t__ UTIL_fseek (int *,unsigned int const,int ) ;
 scalar_t__ feof (int *) ;
 int fread (unsigned char*,int,int,int *) ;
 scalar_t__ fseek (int *,int,int ) ;

__attribute__((used)) static unsigned long long LZ4IO_skipLegacyBlocksData(FILE* finput) {
    unsigned char blockInfo[LZIO_LEGACY_BLOCK_HEADER_SIZE];
    unsigned long long totalBlocksSize = 0;
    LZ4IO_STATIC_ASSERT(LZIO_LEGACY_BLOCK_HEADER_SIZE == MAGICNUMBER_SIZE);
    for (;;) {
        if (!fread(blockInfo, 1, LZIO_LEGACY_BLOCK_HEADER_SIZE, finput)) {
            if (feof(finput)) return totalBlocksSize;
            return 0;
        }
        { const unsigned int nextCBlockSize = LZ4IO_readLE32(&blockInfo);
            if ( nextCBlockSize == LEGACY_MAGICNUMBER ||
                    nextCBlockSize == LZ4IO_MAGICNUMBER ||
                    LZ4IO_isSkippableMagicNumber(nextCBlockSize)) {

                if (fseek(finput, -LZIO_LEGACY_BLOCK_HEADER_SIZE, SEEK_CUR) != 0) {
                    return 0;
                }
                break;
            }
            totalBlocksSize += LZIO_LEGACY_BLOCK_HEADER_SIZE + nextCBlockSize;

            if (UTIL_fseek(finput, nextCBlockSize, SEEK_CUR) != 0) {
                return 0;
            }
        }
    }
    return totalBlocksSize;
}
