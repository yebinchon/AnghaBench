
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lzma_ret ;
typedef int lzma_lz_options ;
struct TYPE_4__ {int coder; } ;
typedef TYPE_1__ lzma_lz_decoder ;
typedef int lzma_allocator ;


 int LZMA_OK ;
 int LZMA_PROG_ERROR ;
 int LZMA_VLI_UNKNOWN ;
 int is_lclppb_valid (void const*) ;
 int lzma_decoder_reset (int ,void const*) ;
 int lzma_decoder_uncompressed (int ,int ) ;
 int lzma_lzma_decoder_create (TYPE_1__*,int *,void const*,int *) ;
 int return_if_error (int ) ;

__attribute__((used)) static lzma_ret
lzma_decoder_init(lzma_lz_decoder *lz, lzma_allocator *allocator,
  const void *options, lzma_lz_options *lz_options)
{
 if (!is_lclppb_valid(options))
  return LZMA_PROG_ERROR;

 return_if_error(lzma_lzma_decoder_create(
   lz, allocator, options, lz_options));

 lzma_decoder_reset(lz->coder, options);
 lzma_decoder_uncompressed(lz->coder, LZMA_VLI_UNKNOWN);

 return LZMA_OK;
}
