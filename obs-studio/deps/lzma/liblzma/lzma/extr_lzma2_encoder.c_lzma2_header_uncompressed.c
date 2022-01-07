
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uncompressed_size; int need_dictionary_reset; int* buf; scalar_t__ buf_pos; } ;
typedef TYPE_1__ lzma_coder ;


 int LZMA2_CHUNK_MAX ;
 int assert (int) ;

__attribute__((used)) static void
lzma2_header_uncompressed(lzma_coder *coder)
{
 assert(coder->uncompressed_size > 0);
 assert(coder->uncompressed_size <= LZMA2_CHUNK_MAX);



 if (coder->need_dictionary_reset)
  coder->buf[0] = 1;
 else
  coder->buf[0] = 2;

 coder->need_dictionary_reset = 0;


 coder->buf[1] = (coder->uncompressed_size - 1) >> 8;
 coder->buf[2] = (coder->uncompressed_size - 1) & 0xFF;


 coder->buf_pos = 0;
 return;
}
