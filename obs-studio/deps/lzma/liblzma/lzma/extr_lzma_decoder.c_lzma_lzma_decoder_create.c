
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lzma_ret ;
struct TYPE_6__ {int preset_dict_size; int preset_dict; int dict_size; } ;
typedef TYPE_1__ lzma_options_lzma ;
struct TYPE_7__ {int preset_dict_size; int preset_dict; int dict_size; } ;
typedef TYPE_2__ lzma_lz_options ;
struct TYPE_8__ {int * set_uncompressed; int * reset; int * code; int * coder; } ;
typedef TYPE_3__ lzma_lz_decoder ;
typedef int lzma_coder ;
typedef int lzma_allocator ;


 int LZMA_MEM_ERROR ;
 int LZMA_OK ;
 int * lzma_alloc (int,int *) ;
 int lzma_decode ;
 int lzma_decoder_reset ;
 int lzma_decoder_uncompressed ;

extern lzma_ret
lzma_lzma_decoder_create(lzma_lz_decoder *lz, lzma_allocator *allocator,
  const void *opt, lzma_lz_options *lz_options)
{
 if (lz->coder == ((void*)0)) {
  lz->coder = lzma_alloc(sizeof(lzma_coder), allocator);
  if (lz->coder == ((void*)0))
   return LZMA_MEM_ERROR;

  lz->code = &lzma_decode;
  lz->reset = &lzma_decoder_reset;
  lz->set_uncompressed = &lzma_decoder_uncompressed;
 }



 const lzma_options_lzma *options = opt;
 lz_options->dict_size = options->dict_size;
 lz_options->preset_dict = options->preset_dict;
 lz_options->preset_dict_size = options->preset_dict_size;

 return LZMA_OK;
}
