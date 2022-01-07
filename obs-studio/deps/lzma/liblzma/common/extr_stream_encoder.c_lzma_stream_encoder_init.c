
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int check; int version; } ;
typedef TYPE_3__ lzma_stream_flags ;
typedef int lzma_ret ;
struct TYPE_14__ {TYPE_5__* coder; int (* update ) (TYPE_5__*,int *,int const*,int *) ;int * end; int * code; } ;
typedef TYPE_4__ lzma_next_coder ;
typedef int lzma_filter ;
typedef int lzma_coder ;
typedef int lzma_check ;
typedef int lzma_allocator ;
struct TYPE_12__ {int check; scalar_t__ version; } ;
struct TYPE_15__ {int buffer_size; scalar_t__ buffer_pos; int buffer; int * index; TYPE_2__ block_options; int sequence; void* index_encoder; void* block_encoder; TYPE_1__* filters; } ;
struct TYPE_11__ {int id; } ;


 int LZMA_MEM_ERROR ;
 void* LZMA_NEXT_CODER_INIT ;
 int LZMA_PROG_ERROR ;
 int LZMA_STREAM_HEADER_SIZE ;
 int LZMA_VLI_UNKNOWN ;
 int SEQ_STREAM_HEADER ;
 TYPE_5__* lzma_alloc (int,int *) ;
 int lzma_index_end (int *,int *) ;
 int * lzma_index_init (int *) ;
 int lzma_next_coder_init (int (*) (TYPE_4__*,int *,int const*,int ),TYPE_4__*,int *) ;
 int lzma_stream_header_encode (TYPE_3__*,int ) ;
 int return_if_error (int ) ;
 int stream_encode ;
 int stream_encoder_end ;
 int stream_encoder_update (TYPE_5__*,int *,int const*,int *) ;

extern lzma_ret
lzma_stream_encoder_init(lzma_next_coder *next, lzma_allocator *allocator,
  const lzma_filter *filters, lzma_check check)
{
 lzma_next_coder_init(&lzma_stream_encoder_init, next, allocator);

 if (filters == ((void*)0))
  return LZMA_PROG_ERROR;

 if (next->coder == ((void*)0)) {
  next->coder = lzma_alloc(sizeof(lzma_coder), allocator);
  if (next->coder == ((void*)0))
   return LZMA_MEM_ERROR;

  next->code = &stream_encode;
  next->end = &stream_encoder_end;
  next->update = &stream_encoder_update;

  next->coder->filters[0].id = LZMA_VLI_UNKNOWN;
  next->coder->block_encoder = LZMA_NEXT_CODER_INIT;
  next->coder->index_encoder = LZMA_NEXT_CODER_INIT;
  next->coder->index = ((void*)0);
 }


 next->coder->sequence = SEQ_STREAM_HEADER;
 next->coder->block_options.version = 0;
 next->coder->block_options.check = check;


 lzma_index_end(next->coder->index, allocator);
 next->coder->index = lzma_index_init(allocator);
 if (next->coder->index == ((void*)0))
  return LZMA_MEM_ERROR;


 lzma_stream_flags stream_flags = {
  .version = 0,
  .check = check,
 };
 return_if_error(lzma_stream_header_encode(
   &stream_flags, next->coder->buffer));

 next->coder->buffer_pos = 0;
 next->coder->buffer_size = LZMA_STREAM_HEADER_SIZE;




 return stream_encoder_update(
   next->coder, allocator, filters, ((void*)0));
}
