
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lzma_ret ;
struct TYPE_3__ {scalar_t__ pos; int sequence; int * index_hash; } ;
typedef TYPE_1__ lzma_coder ;
typedef int lzma_allocator ;


 int LZMA_MEM_ERROR ;
 int LZMA_OK ;
 int SEQ_STREAM_HEADER ;
 int * lzma_index_hash_init (int *,int *) ;

__attribute__((used)) static lzma_ret
stream_decoder_reset(lzma_coder *coder, lzma_allocator *allocator)
{

 coder->index_hash = lzma_index_hash_init(coder->index_hash, allocator);
 if (coder->index_hash == ((void*)0))
  return LZMA_MEM_ERROR;


 coder->sequence = SEQ_STREAM_HEADER;
 coder->pos = 0;

 return LZMA_OK;
}
