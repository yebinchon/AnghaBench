
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t block_len; } ;
struct chmFile {size_t* cache_block_indices; size_t cache_num_blocks; int lzx_last_block; int lzx_mutex; int window_size; scalar_t__ lzx_state; int cache_mutex; int ** cache_blocks; TYPE_1__ reset_table; } ;
typedef size_t UInt64 ;
typedef int UChar ;
typedef scalar_t__ Int64 ;


 int CHM_ACQUIRE_LOCK (int ) ;
 int CHM_RELEASE_LOCK (int ) ;
 scalar_t__ LZXinit (int ) ;
 size_t _chm_decompress_block (struct chmFile*,size_t,int **) ;
 int memcpy (int *,int *,unsigned int) ;

__attribute__((used)) static Int64 _chm_decompress_region(struct chmFile *h,
                                    UChar *buf,
                                    UInt64 start,
                                    Int64 len)
{
    UInt64 nBlock, nOffset;
    UInt64 nLen;
    UInt64 gotLen;
    UChar *ubuffer = ((void*)0);

        if (len <= 0)
                return 0;


    nBlock = start / h->reset_table.block_len;
    nOffset = start % h->reset_table.block_len;
    nLen = len;
    if (nLen > (h->reset_table.block_len - nOffset))
        nLen = h->reset_table.block_len - nOffset;


    CHM_ACQUIRE_LOCK(h->lzx_mutex);
    CHM_ACQUIRE_LOCK(h->cache_mutex);
    if (h->cache_block_indices[nBlock % h->cache_num_blocks] == nBlock &&
        h->cache_blocks[nBlock % h->cache_num_blocks] != ((void*)0))
    {
        memcpy(buf,
               h->cache_blocks[nBlock % h->cache_num_blocks] + nOffset,
               (unsigned int)nLen);
        CHM_RELEASE_LOCK(h->cache_mutex);
        CHM_RELEASE_LOCK(h->lzx_mutex);
        return nLen;
    }
    CHM_RELEASE_LOCK(h->cache_mutex);


    if (! h->lzx_state)
    {
        h->lzx_last_block = -1;
        h->lzx_state = LZXinit(h->window_size);
    }


    gotLen = _chm_decompress_block(h, nBlock, &ubuffer);
    if (gotLen < nLen)
        nLen = gotLen;
    memcpy(buf, ubuffer+nOffset, (unsigned int)nLen);
    CHM_RELEASE_LOCK(h->lzx_mutex);
    return nLen;
}
