
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lzma_ret ;
typedef int lzma_lz_options ;
struct TYPE_3__ {int coder; int * code; } ;
typedef TYPE_1__ lzma_lz_encoder ;
typedef int lzma_allocator ;


 int lzma_encode ;
 int lzma_lzma_encoder_create (int *,int *,void const*,int *) ;

__attribute__((used)) static lzma_ret
lzma_encoder_init(lzma_lz_encoder *lz, lzma_allocator *allocator,
  const void *options, lzma_lz_options *lz_options)
{
 lz->code = &lzma_encode;
 return lzma_lzma_encoder_create(
   &lz->coder, allocator, options, lz_options);
}
