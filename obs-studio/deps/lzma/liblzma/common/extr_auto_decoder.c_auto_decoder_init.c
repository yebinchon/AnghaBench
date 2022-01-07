
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int lzma_ret ;
struct TYPE_6__ {TYPE_4__* coder; int * memconfig; int * get_check; int * end; int * code; } ;
typedef TYPE_1__ lzma_next_coder ;
typedef int lzma_coder ;
typedef int lzma_allocator ;
struct TYPE_7__ {int flags; int sequence; scalar_t__ memlimit; int next; } ;


 int LZMA_MEM_ERROR ;
 int LZMA_NEXT_CODER_INIT ;
 int LZMA_OK ;
 int LZMA_OPTIONS_ERROR ;
 int LZMA_PROG_ERROR ;
 int LZMA_SUPPORTED_FLAGS ;
 int SEQ_INIT ;
 int auto_decode ;
 int auto_decoder_end ;
 int auto_decoder_get_check ;
 int auto_decoder_memconfig ;
 TYPE_4__* lzma_alloc (int,int *) ;
 int lzma_next_coder_init (int (*) (TYPE_1__*,int *,scalar_t__,int),TYPE_1__*,int *) ;

__attribute__((used)) static lzma_ret
auto_decoder_init(lzma_next_coder *next, lzma_allocator *allocator,
  uint64_t memlimit, uint32_t flags)
{
 lzma_next_coder_init(&auto_decoder_init, next, allocator);

 if (memlimit == 0)
  return LZMA_PROG_ERROR;

 if (flags & ~LZMA_SUPPORTED_FLAGS)
  return LZMA_OPTIONS_ERROR;

 if (next->coder == ((void*)0)) {
  next->coder = lzma_alloc(sizeof(lzma_coder), allocator);
  if (next->coder == ((void*)0))
   return LZMA_MEM_ERROR;

  next->code = &auto_decode;
  next->end = &auto_decoder_end;
  next->get_check = &auto_decoder_get_check;
  next->memconfig = &auto_decoder_memconfig;
  next->coder->next = LZMA_NEXT_CODER_INIT;
 }

 next->coder->memlimit = memlimit;
 next->coder->flags = flags;
 next->coder->sequence = SEQ_INIT;

 return LZMA_OK;
}
