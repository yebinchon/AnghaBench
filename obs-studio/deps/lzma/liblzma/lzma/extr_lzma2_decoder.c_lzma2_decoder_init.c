
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lzma_ret ;
struct TYPE_6__ {scalar_t__ preset_dict_size; int * preset_dict; } ;
typedef TYPE_1__ lzma_options_lzma ;
typedef int lzma_lz_options ;
struct TYPE_7__ {TYPE_4__* coder; int * end; int * code; } ;
typedef TYPE_2__ lzma_lz_decoder ;
typedef int lzma_coder ;
typedef int lzma_allocator ;
struct TYPE_8__ {int need_properties; int need_dictionary_reset; int lzma; int sequence; } ;


 int LZMA_LZ_DECODER_INIT ;
 int LZMA_MEM_ERROR ;
 int SEQ_CONTROL ;
 int lzma2_decode ;
 int lzma2_decoder_end ;
 TYPE_4__* lzma_alloc (int,int *) ;
 int lzma_lzma_decoder_create (int *,int *,TYPE_1__ const*,int *) ;

__attribute__((used)) static lzma_ret
lzma2_decoder_init(lzma_lz_decoder *lz, lzma_allocator *allocator,
  const void *opt, lzma_lz_options *lz_options)
{
 if (lz->coder == ((void*)0)) {
  lz->coder = lzma_alloc(sizeof(lzma_coder), allocator);
  if (lz->coder == ((void*)0))
   return LZMA_MEM_ERROR;

  lz->code = &lzma2_decode;
  lz->end = &lzma2_decoder_end;

  lz->coder->lzma = LZMA_LZ_DECODER_INIT;
 }

 const lzma_options_lzma *options = opt;

 lz->coder->sequence = SEQ_CONTROL;
 lz->coder->need_properties = 1;
 lz->coder->need_dictionary_reset = options->preset_dict == ((void*)0)
   || options->preset_dict_size == 0;

 return lzma_lzma_decoder_create(&lz->coder->lzma,
   allocator, options, lz_options);
}
