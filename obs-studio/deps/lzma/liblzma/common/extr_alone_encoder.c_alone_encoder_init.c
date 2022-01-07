
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
typedef int lzma_ret ;
struct TYPE_12__ {scalar_t__ dict_size; } ;
typedef TYPE_1__ lzma_options_lzma ;
struct TYPE_13__ {TYPE_9__* coder; int * end; int * code; } ;
typedef TYPE_2__ lzma_next_coder ;
struct TYPE_14__ {void* options; int * init; } ;
typedef TYPE_3__ lzma_filter_info ;
typedef int lzma_coder ;
typedef int lzma_allocator ;
struct TYPE_15__ {int next; scalar_t__ header; scalar_t__ header_pos; int sequence; } ;


 scalar_t__ LZMA_DICT_SIZE_MIN ;
 int LZMA_MEM_ERROR ;
 int LZMA_NEXT_CODER_INIT ;
 int LZMA_OPTIONS_ERROR ;
 int SEQ_HEADER ;
 int UINT32_MAX ;
 int alone_encode ;
 int alone_encoder_end ;
 TYPE_9__* lzma_alloc (int,int *) ;
 int lzma_lzma_encoder_init ;
 scalar_t__ lzma_lzma_lclppb_encode (TYPE_1__ const*,scalar_t__) ;
 int lzma_next_coder_init (int (*) (TYPE_2__*,int *,TYPE_1__ const*),TYPE_2__*,int *) ;
 int lzma_next_filter_init (int *,int *,TYPE_3__ const*) ;
 int memset (scalar_t__,int,int) ;
 int unaligned_write32le (scalar_t__,int) ;

__attribute__((used)) static lzma_ret
alone_encoder_init(lzma_next_coder *next, lzma_allocator *allocator,
  const lzma_options_lzma *options)
{
 lzma_next_coder_init(&alone_encoder_init, next, allocator);

 if (next->coder == ((void*)0)) {
  next->coder = lzma_alloc(sizeof(lzma_coder), allocator);
  if (next->coder == ((void*)0))
   return LZMA_MEM_ERROR;

  next->code = &alone_encode;
  next->end = &alone_encoder_end;
  next->coder->next = LZMA_NEXT_CODER_INIT;
 }


 next->coder->sequence = SEQ_HEADER;
 next->coder->header_pos = 0;



 if (lzma_lzma_lclppb_encode(options, next->coder->header))
  return LZMA_OPTIONS_ERROR;


 if (options->dict_size < LZMA_DICT_SIZE_MIN)
  return LZMA_OPTIONS_ERROR;





 uint32_t d = options->dict_size - 1;
 d |= d >> 2;
 d |= d >> 3;
 d |= d >> 4;
 d |= d >> 8;
 d |= d >> 16;
 if (d != UINT32_MAX)
  ++d;

 unaligned_write32le(next->coder->header + 1, d);


 memset(next->coder->header + 1 + 4, 0xFF, 8);


 const lzma_filter_info filters[2] = {
  {
   .init = &lzma_lzma_encoder_init,
   .options = (void *)(options),
  }, {
   .init = ((void*)0),
  }
 };

 return lzma_next_filter_init(&next->coder->next, allocator, filters);
}
