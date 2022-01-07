
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ block_len; } ;
struct chmFile {scalar_t__ reset_blkcount; scalar_t__ lzx_last_block; int cache_num_blocks; int* cache_block_indices; TYPE_1__ reset_table; int lzx_state; int ** cache_blocks; } ;
typedef scalar_t__ UInt64 ;
typedef int UInt32 ;
typedef int UChar ;
typedef scalar_t__ Int64 ;


 scalar_t__ DECR_OK ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,unsigned int) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ LZXdecompress (int ,int *,int *,int,int) ;
 int LZXreset (int ) ;
 scalar_t__ _chm_fetch_bytes (struct chmFile*,int *,scalar_t__,scalar_t__) ;
 int _chm_get_cmpblock_bounds (struct chmFile*,scalar_t__,scalar_t__*,scalar_t__*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static Int64 _chm_decompress_block(struct chmFile *h,
                                   UInt64 block,
                                   UChar **ubuffer)
{
    UChar *cbuffer = HeapAlloc( GetProcessHeap(), 0,
                              ((unsigned int)h->reset_table.block_len + 6144));
    UInt64 cmpStart;
    Int64 cmpLen;
    int indexSlot;
    UChar *lbuffer;
    UInt32 blockAlign = (UInt32)(block % h->reset_blkcount);
    UInt32 i;


    if (block - blockAlign <= h->lzx_last_block &&
        block >= h->lzx_last_block)
        blockAlign = (block - h->lzx_last_block);


    if (blockAlign != 0)
    {

        for (i = blockAlign; i > 0; i--)
        {
            UInt32 curBlockIdx = block - i;


            if (h->lzx_last_block != curBlockIdx)
            {
                if ((curBlockIdx % h->reset_blkcount) == 0)
                {



                    LZXreset(h->lzx_state);
                }

                indexSlot = (int)((curBlockIdx) % h->cache_num_blocks);
                h->cache_block_indices[indexSlot] = curBlockIdx;
                if (! h->cache_blocks[indexSlot])
                    h->cache_blocks[indexSlot] =
                      HeapAlloc(GetProcessHeap(), 0,
                                (unsigned int)(h->reset_table.block_len));
                lbuffer = h->cache_blocks[indexSlot];





                if (!_chm_get_cmpblock_bounds(h, curBlockIdx, &cmpStart, &cmpLen) ||
                    _chm_fetch_bytes(h, cbuffer, cmpStart, cmpLen) != cmpLen ||
                    LZXdecompress(h->lzx_state, cbuffer, lbuffer, (int)cmpLen,
                                  (int)h->reset_table.block_len) != DECR_OK)
                {



                    HeapFree(GetProcessHeap(), 0, cbuffer);
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



            LZXreset(h->lzx_state);
        }
    }


    indexSlot = (int)(block % h->cache_num_blocks);
    h->cache_block_indices[indexSlot] = block;
    if (! h->cache_blocks[indexSlot])
        h->cache_blocks[indexSlot] =
          HeapAlloc(GetProcessHeap(), 0, ((unsigned int)h->reset_table.block_len));
    lbuffer = h->cache_blocks[indexSlot];
    *ubuffer = lbuffer;





    if (! _chm_get_cmpblock_bounds(h, block, &cmpStart, &cmpLen) ||
        _chm_fetch_bytes(h, cbuffer, cmpStart, cmpLen) != cmpLen ||
        LZXdecompress(h->lzx_state, cbuffer, lbuffer, (int)cmpLen,
                      (int)h->reset_table.block_len) != DECR_OK)
    {



        HeapFree(GetProcessHeap(), 0, cbuffer);
        return 0;
    }
    h->lzx_last_block = (int)block;




    HeapFree(GetProcessHeap(), 0, cbuffer);
    return h->reset_table.block_len;
}
