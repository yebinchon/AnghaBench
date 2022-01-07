
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lzma_vli ;
struct TYPE_3__ {int uncompressed_size; } ;
typedef TYPE_1__ lzma_coder ;



__attribute__((used)) static void
lzma_decoder_uncompressed(lzma_coder *coder, lzma_vli uncompressed_size)
{
 coder->uncompressed_size = uncompressed_size;
}
