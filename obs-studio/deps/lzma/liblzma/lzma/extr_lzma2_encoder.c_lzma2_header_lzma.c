
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uncompressed_size; int compressed_size; int need_properties; int need_dictionary_reset; int* buf; int need_state_reset; size_t buf_pos; int opt_cur; } ;
typedef TYPE_1__ lzma_coder ;


 int LZMA2_CHUNK_MAX ;
 scalar_t__ LZMA2_HEADER_MAX ;
 int LZMA2_UNCOMPRESSED_MAX ;
 int assert (int) ;
 int lzma_lzma_lclppb_encode (int *,size_t*) ;

__attribute__((used)) static void
lzma2_header_lzma(lzma_coder *coder)
{
 assert(coder->uncompressed_size > 0);
 assert(coder->uncompressed_size <= LZMA2_UNCOMPRESSED_MAX);
 assert(coder->compressed_size > 0);
 assert(coder->compressed_size <= LZMA2_CHUNK_MAX);

 size_t pos;

 if (coder->need_properties) {
  pos = 0;

  if (coder->need_dictionary_reset)
   coder->buf[pos] = 0x80 + (3 << 5);
  else
   coder->buf[pos] = 0x80 + (2 << 5);
 } else {
  pos = 1;

  if (coder->need_state_reset)
   coder->buf[pos] = 0x80 + (1 << 5);
  else
   coder->buf[pos] = 0x80;
 }


 coder->buf_pos = pos;


 size_t size = coder->uncompressed_size - 1;
 coder->buf[pos++] += size >> 16;
 coder->buf[pos++] = (size >> 8) & 0xFF;
 coder->buf[pos++] = size & 0xFF;


 size = coder->compressed_size - 1;
 coder->buf[pos++] = size >> 8;
 coder->buf[pos++] = size & 0xFF;


 if (coder->need_properties)
  lzma_lzma_lclppb_encode(&coder->opt_cur, coder->buf + pos);

 coder->need_properties = 0;
 coder->need_state_reset = 0;
 coder->need_dictionary_reset = 0;



 coder->compressed_size += LZMA2_HEADER_MAX;

 return;
}
