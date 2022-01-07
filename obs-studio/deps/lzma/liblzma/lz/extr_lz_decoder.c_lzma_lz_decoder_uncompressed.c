
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lzma_vli ;
struct TYPE_4__ {int coder; int (* set_uncompressed ) (int ,int ) ;} ;
struct TYPE_5__ {TYPE_1__ lz; } ;
typedef TYPE_2__ lzma_coder ;


 int stub1 (int ,int ) ;

extern void
lzma_lz_decoder_uncompressed(lzma_coder *coder, lzma_vli uncompressed_size)
{
 coder->lz.set_uncompressed(coder->lz.coder, uncompressed_size);
}
