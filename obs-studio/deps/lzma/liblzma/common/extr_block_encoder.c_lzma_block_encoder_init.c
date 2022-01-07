
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int lzma_ret ;
struct TYPE_9__ {TYPE_8__* coder; int * update; int * end; int * code; } ;
typedef TYPE_1__ lzma_next_coder ;
typedef int lzma_coder ;
struct TYPE_10__ {scalar_t__ version; int filters; scalar_t__ check; } ;
typedef TYPE_2__ lzma_block ;
typedef int lzma_allocator ;
struct TYPE_11__ {int next; int check; scalar_t__ pos; scalar_t__ uncompressed_size; scalar_t__ compressed_size; TYPE_2__* block; int sequence; } ;


 unsigned int LZMA_CHECK_ID_MAX ;
 int LZMA_MEM_ERROR ;
 int LZMA_NEXT_CODER_INIT ;
 int LZMA_OPTIONS_ERROR ;
 int LZMA_PROG_ERROR ;
 int LZMA_UNSUPPORTED_CHECK ;
 int SEQ_CODE ;
 int block_encode ;
 int block_encoder_end ;
 int block_encoder_update ;
 TYPE_8__* lzma_alloc (int,int *) ;
 int lzma_check_init (int *,scalar_t__) ;
 int lzma_check_is_supported (scalar_t__) ;
 int lzma_next_coder_init (int (*) (TYPE_1__*,int *,TYPE_2__*),TYPE_1__*,int *) ;
 int lzma_raw_encoder_init (int *,int *,int ) ;

extern lzma_ret
lzma_block_encoder_init(lzma_next_coder *next, lzma_allocator *allocator,
  lzma_block *block)
{
 lzma_next_coder_init(&lzma_block_encoder_init, next, allocator);

 if (block == ((void*)0))
  return LZMA_PROG_ERROR;



 if (block->version != 0)
  return LZMA_OPTIONS_ERROR;



 if ((unsigned int)(block->check) > LZMA_CHECK_ID_MAX)
  return LZMA_PROG_ERROR;

 if (!lzma_check_is_supported(block->check))
  return LZMA_UNSUPPORTED_CHECK;


 if (next->coder == ((void*)0)) {
  next->coder = lzma_alloc(sizeof(lzma_coder), allocator);
  if (next->coder == ((void*)0))
   return LZMA_MEM_ERROR;

  next->code = &block_encode;
  next->end = &block_encoder_end;
  next->update = &block_encoder_update;
  next->coder->next = LZMA_NEXT_CODER_INIT;
 }


 next->coder->sequence = SEQ_CODE;
 next->coder->block = block;
 next->coder->compressed_size = 0;
 next->coder->uncompressed_size = 0;
 next->coder->pos = 0;


 lzma_check_init(&next->coder->check, block->check);


 return lzma_raw_encoder_init(&next->coder->next, allocator,
   block->filters);
}
