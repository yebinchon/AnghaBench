
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int lzma_ret ;
typedef int lzma_index ;
struct TYPE_3__ {scalar_t__ crc32; scalar_t__ pos; scalar_t__ count; int memlimit; int sequence; int * index; int ** index_ptr; } ;
typedef TYPE_1__ lzma_coder ;
typedef int lzma_allocator ;


 int LZMA_MEM_ERROR ;
 int LZMA_OK ;
 int SEQ_INDICATOR ;
 int * lzma_index_init (int *) ;

__attribute__((used)) static lzma_ret
index_decoder_reset(lzma_coder *coder, lzma_allocator *allocator,
  lzma_index **i, uint64_t memlimit)
{




 coder->index_ptr = i;
 *i = ((void*)0);


 coder->index = lzma_index_init(allocator);
 if (coder->index == ((void*)0))
  return LZMA_MEM_ERROR;


 coder->sequence = SEQ_INDICATOR;
 coder->memlimit = memlimit;
 coder->count = 0;
 coder->pos = 0;
 coder->crc32 = 0;

 return LZMA_OK;
}
