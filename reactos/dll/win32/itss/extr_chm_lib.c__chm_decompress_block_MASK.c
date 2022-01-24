#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ block_len; } ;
struct chmFile {scalar_t__ reset_blkcount; scalar_t__ lzx_last_block; int cache_num_blocks; int* cache_block_indices; TYPE_1__ reset_table; int /*<<< orphan*/  lzx_state; int /*<<< orphan*/ ** cache_blocks; } ;
typedef  scalar_t__ UInt64 ;
typedef  int UInt32 ;
typedef  int /*<<< orphan*/  UChar ;
typedef  scalar_t__ Int64 ;

/* Variables and functions */
 scalar_t__ DECR_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct chmFile*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct chmFile*,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static Int64 FUNC8(struct chmFile *h,
                                   UInt64 block,
                                   UChar **ubuffer)
{
    UChar *cbuffer = FUNC1( FUNC0(), 0,
                              ((unsigned int)h->reset_table.block_len + 6144));
    UInt64 cmpStart;                                    /* compressed start  */
    Int64 cmpLen;                                       /* compressed len    */
    int indexSlot;                                      /* cache index slot  */
    UChar *lbuffer;                                     /* local buffer ptr  */
    UInt32 blockAlign = (UInt32)(block % h->reset_blkcount); /* reset interval align */
    UInt32 i;                                           /* local loop index  */

    /* let the caching system pull its weight! */
    if (block - blockAlign <= h->lzx_last_block  &&
        block              >= h->lzx_last_block)
        blockAlign = (block - h->lzx_last_block);

    /* check if we need previous blocks */
    if (blockAlign != 0)
    {
        /* fetch all required previous blocks since last reset */
        for (i = blockAlign; i > 0; i--)
        {
            UInt32 curBlockIdx = block - i;

            /* check if we most recently decompressed the previous block */
            if (h->lzx_last_block != curBlockIdx)
            {
                if ((curBlockIdx % h->reset_blkcount) == 0)
                {
#ifdef CHM_DEBUG
                    fprintf(stderr, "***RESET (1)***\n");
#endif
                    FUNC4(h->lzx_state);
                }

                indexSlot = (int)((curBlockIdx) % h->cache_num_blocks);
                h->cache_block_indices[indexSlot] = curBlockIdx;
                if (! h->cache_blocks[indexSlot])
                    h->cache_blocks[indexSlot] =
                      FUNC1(FUNC0(), 0,
                                (unsigned int)(h->reset_table.block_len));
                lbuffer = h->cache_blocks[indexSlot];

                /* decompress the previous block */
#ifdef CHM_DEBUG
                fprintf(stderr, "Decompressing block #%4d (EXTRA)\n", curBlockIdx);
#endif
                if (!FUNC6(h, curBlockIdx, &cmpStart, &cmpLen) ||
                    FUNC5(h, cbuffer, cmpStart, cmpLen) != cmpLen      ||
                    FUNC3(h->lzx_state, cbuffer, lbuffer, (int)cmpLen,
                                  (int)h->reset_table.block_len) != DECR_OK)
                {
#ifdef CHM_DEBUG
                    fprintf(stderr, "   (DECOMPRESS FAILED!)\n");
#endif
                    FUNC2(FUNC0(), 0, cbuffer);
                    return 0;
                }

                h->lzx_last_block = (int)curBlockIdx;
            }
        }
    }
    else
    {
        if ((block % h->reset_blkcount) == 0)
        {
#ifdef CHM_DEBUG
            fprintf(stderr, "***RESET (2)***\n");
#endif
            FUNC4(h->lzx_state);
        }
    }

    /* allocate slot in cache */
    indexSlot = (int)(block % h->cache_num_blocks);
    h->cache_block_indices[indexSlot] = block;
    if (! h->cache_blocks[indexSlot])
        h->cache_blocks[indexSlot] =
          FUNC1(FUNC0(), 0, ((unsigned int)h->reset_table.block_len));
    lbuffer = h->cache_blocks[indexSlot];
    *ubuffer = lbuffer;

    /* decompress the block we actually want */
#ifdef CHM_DEBUG
    fprintf(stderr, "Decompressing block #%4d (REAL )\n", block);
#endif
    if (! FUNC6(h, block, &cmpStart, &cmpLen)          ||
        FUNC5(h, cbuffer, cmpStart, cmpLen) != cmpLen          ||
        FUNC3(h->lzx_state, cbuffer, lbuffer, (int)cmpLen,
                      (int)h->reset_table.block_len) != DECR_OK)
    {
#ifdef CHM_DEBUG
        fprintf(stderr, "   (DECOMPRESS FAILED!)\n");
#endif
        FUNC2(FUNC0(), 0, cbuffer);
        return 0;
    }
    h->lzx_last_block = (int)block;

    /* XXX: modify LZX routines to return the length of the data they
     * decompressed and return that instead, for an extra sanity check.
     */
    FUNC2(FUNC0(), 0, cbuffer);
    return h->reset_table.block_len;
}