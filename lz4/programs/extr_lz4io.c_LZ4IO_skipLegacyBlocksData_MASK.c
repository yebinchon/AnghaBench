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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned int const LEGACY_MAGICNUMBER ; 
 unsigned int const LZ4IO_MAGICNUMBER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned int const) ; 
 unsigned int FUNC2 (unsigned char**) ; 
 int LZIO_LEGACY_BLOCK_HEADER_SIZE ; 
 int MAGICNUMBER_SIZE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned int const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long long FUNC7(FILE* finput) {
    unsigned char blockInfo[LZIO_LEGACY_BLOCK_HEADER_SIZE];
    unsigned long long totalBlocksSize = 0;
    FUNC0(LZIO_LEGACY_BLOCK_HEADER_SIZE == MAGICNUMBER_SIZE);
    for (;;) {
        if (!FUNC5(blockInfo, 1, LZIO_LEGACY_BLOCK_HEADER_SIZE, finput)) {
            if (FUNC4(finput)) return totalBlocksSize;
            return 0;
        }
        {   const unsigned int nextCBlockSize = FUNC2(&blockInfo);
            if ( nextCBlockSize == LEGACY_MAGICNUMBER ||
                    nextCBlockSize == LZ4IO_MAGICNUMBER ||
                    FUNC1(nextCBlockSize)) {
                /* Rewind back. we want cursor at the begining of next frame.*/
                if (FUNC6(finput, -LZIO_LEGACY_BLOCK_HEADER_SIZE, SEEK_CUR) != 0) {
                    return 0;
                }
                break;
            }
            totalBlocksSize += LZIO_LEGACY_BLOCK_HEADER_SIZE + nextCBlockSize;
            /* skip to the next block */
            if (FUNC3(finput, nextCBlockSize, SEEK_CUR) != 0) {
                return 0;
            }
        }
    }
    return totalBlocksSize;
}