
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LZ4F_contentChecksum_t ;
typedef unsigned long LZ4F_blockChecksum_t ;
typedef int FILE ;


 unsigned long const LZ4F_BLOCK_CHECKSUM_SIZE ;
 int LZ4F_BLOCK_HEADER_SIZE ;
 unsigned long const LZ4F_CONTENT_CHECKSUM_SIZE ;
 int LZ4IO_readLE32 (unsigned char**) ;
 int SEEK_CUR ;
 scalar_t__ UTIL_fseek (int *,unsigned long const,int ) ;
 scalar_t__ feof (int *) ;
 int fread (unsigned char*,int,int,int *) ;

__attribute__((used)) static unsigned long long LZ4IO_skipBlocksData(FILE* finput,
        const LZ4F_blockChecksum_t blockChecksumFlag,
        const LZ4F_contentChecksum_t contentChecksumFlag) {
    unsigned char blockInfo[LZ4F_BLOCK_HEADER_SIZE];
    unsigned long long totalBlocksSize = 0;
    for (;;) {
        if (!fread(blockInfo, 1, LZ4F_BLOCK_HEADER_SIZE, finput)) {
            if (feof(finput)) return totalBlocksSize;
            return 0;
        }
        totalBlocksSize += LZ4F_BLOCK_HEADER_SIZE;
        {
            const unsigned long nextCBlockSize = LZ4IO_readLE32(&blockInfo) & 0x7FFFFFFFU;
            const unsigned long nextBlock = nextCBlockSize + (blockChecksumFlag * LZ4F_BLOCK_CHECKSUM_SIZE);
            if (nextCBlockSize == 0) {

                if (contentChecksumFlag) {

                    if (UTIL_fseek(finput, LZ4F_CONTENT_CHECKSUM_SIZE, SEEK_CUR) != 0) {
                        return 0;
                    }
                    totalBlocksSize += LZ4F_CONTENT_CHECKSUM_SIZE;
                }
                break;
            }
            totalBlocksSize += nextBlock;

            if (UTIL_fseek(finput, nextBlock, SEEK_CUR) != 0) {
                return 0;
            }
        }
    }
    return totalBlocksSize;
}
