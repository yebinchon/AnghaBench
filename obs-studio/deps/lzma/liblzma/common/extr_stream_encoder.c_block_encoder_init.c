
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lzma_ret ;
struct TYPE_6__ {void* uncompressed_size; void* compressed_size; } ;
struct TYPE_5__ {TYPE_2__ block_options; int block_encoder; } ;
typedef TYPE_1__ lzma_coder ;
typedef int lzma_allocator ;


 void* LZMA_VLI_UNKNOWN ;
 int lzma_block_encoder_init (int *,int *,TYPE_2__*) ;
 int lzma_block_header_size (TYPE_2__*) ;
 int return_if_error (int ) ;

__attribute__((used)) static lzma_ret
block_encoder_init(lzma_coder *coder, lzma_allocator *allocator)
{





 coder->block_options.compressed_size = LZMA_VLI_UNKNOWN;
 coder->block_options.uncompressed_size = LZMA_VLI_UNKNOWN;

 return_if_error(lzma_block_header_size(&coder->block_options));


 return lzma_block_encoder_init(&coder->block_encoder, allocator,
   &coder->block_options);
}
