
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int lzma_ret ;
struct TYPE_7__ {TYPE_4__* coder; int * memconfig; int * end; int * code; } ;
typedef TYPE_1__ lzma_next_coder ;
typedef int lzma_index ;
typedef int lzma_coder ;
typedef int lzma_allocator ;
struct TYPE_8__ {int * index; } ;


 int LZMA_MEM_ERROR ;
 int LZMA_PROG_ERROR ;
 int index_decode ;
 int index_decoder_end ;
 int index_decoder_memconfig ;
 int index_decoder_reset (TYPE_4__*,int *,int **,scalar_t__) ;
 TYPE_4__* lzma_alloc (int,int *) ;
 int lzma_index_end (int *,int *) ;
 int lzma_next_coder_init (int (*) (TYPE_1__*,int *,int **,scalar_t__),TYPE_1__*,int *) ;

__attribute__((used)) static lzma_ret
index_decoder_init(lzma_next_coder *next, lzma_allocator *allocator,
  lzma_index **i, uint64_t memlimit)
{
 lzma_next_coder_init(&index_decoder_init, next, allocator);

 if (i == ((void*)0) || memlimit == 0)
  return LZMA_PROG_ERROR;

 if (next->coder == ((void*)0)) {
  next->coder = lzma_alloc(sizeof(lzma_coder), allocator);
  if (next->coder == ((void*)0))
   return LZMA_MEM_ERROR;

  next->code = &index_decode;
  next->end = &index_decoder_end;
  next->memconfig = &index_decoder_memconfig;
  next->coder->index = ((void*)0);
 } else {
  lzma_index_end(next->coder->index, allocator);
 }

 return index_decoder_reset(next->coder, allocator, i, memlimit);
}
