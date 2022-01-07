
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int lzma_ret ;
struct TYPE_8__ {TYPE_6__* coder; int * memconfig; int * end; int * code; } ;
typedef TYPE_2__ lzma_next_coder ;
typedef int lzma_coder ;
typedef int lzma_allocator ;
struct TYPE_7__ {scalar_t__ preset_dict_size; int * preset_dict; scalar_t__ dict_size; } ;
struct TYPE_9__ {int picky; int memusage; scalar_t__ memlimit; scalar_t__ uncompressed_size; TYPE_1__ options; scalar_t__ pos; int sequence; int next; } ;


 int LZMA_MEMUSAGE_BASE ;
 int LZMA_MEM_ERROR ;
 int LZMA_NEXT_CODER_INIT ;
 int LZMA_OK ;
 int LZMA_PROG_ERROR ;
 int SEQ_PROPERTIES ;
 int alone_decode ;
 int alone_decoder_end ;
 int alone_decoder_memconfig ;
 TYPE_6__* lzma_alloc (int,int *) ;
 int lzma_next_coder_init (int (*) (TYPE_2__*,int *,scalar_t__,int),TYPE_2__*,int *) ;

extern lzma_ret
lzma_alone_decoder_init(lzma_next_coder *next, lzma_allocator *allocator,
  uint64_t memlimit, bool picky)
{
 lzma_next_coder_init(&lzma_alone_decoder_init, next, allocator);

 if (memlimit == 0)
  return LZMA_PROG_ERROR;

 if (next->coder == ((void*)0)) {
  next->coder = lzma_alloc(sizeof(lzma_coder), allocator);
  if (next->coder == ((void*)0))
   return LZMA_MEM_ERROR;

  next->code = &alone_decode;
  next->end = &alone_decoder_end;
  next->memconfig = &alone_decoder_memconfig;
  next->coder->next = LZMA_NEXT_CODER_INIT;
 }

 next->coder->sequence = SEQ_PROPERTIES;
 next->coder->picky = picky;
 next->coder->pos = 0;
 next->coder->options.dict_size = 0;
 next->coder->options.preset_dict = ((void*)0);
 next->coder->options.preset_dict_size = 0;
 next->coder->uncompressed_size = 0;
 next->coder->memlimit = memlimit;
 next->coder->memusage = LZMA_MEMUSAGE_BASE;

 return LZMA_OK;
}
