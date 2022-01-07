
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ lzma_ret ;
struct TYPE_7__ {int dict_size; } ;
typedef TYPE_1__ lzma_options_lzma ;
struct TYPE_8__ {int id; TYPE_1__* options; } ;
typedef TYPE_2__ lzma_filter ;
struct TYPE_9__ {scalar_t__ compressed_size; size_t header_size; TYPE_2__* filters; } ;
typedef TYPE_3__ lzma_block ;


 int LZMA2_CHUNK_MAX ;
 scalar_t__ LZMA_BUF_ERROR ;
 int LZMA_DICT_SIZE_MIN ;
 int LZMA_FILTER_LZMA2 ;
 scalar_t__ LZMA_OK ;
 scalar_t__ LZMA_PROG_ERROR ;
 int LZMA_VLI_UNKNOWN ;
 int assert (int) ;
 scalar_t__ lzma2_bound (size_t) ;
 scalar_t__ lzma_block_header_encode (TYPE_3__*,int*) ;
 scalar_t__ lzma_block_header_size (TYPE_3__*) ;
 int memcpy (int*,int const*,size_t const) ;
 size_t my_min (size_t,int ) ;

__attribute__((used)) static lzma_ret
block_encode_uncompressed(lzma_block *block, const uint8_t *in, size_t in_size,
  uint8_t *out, size_t *out_pos, size_t out_size)
{






 lzma_options_lzma lzma2 = {
  .dict_size = LZMA_DICT_SIZE_MIN,
 };

 lzma_filter filters[2];
 filters[0].id = LZMA_FILTER_LZMA2;
 filters[0].options = &lzma2;
 filters[1].id = LZMA_VLI_UNKNOWN;



 lzma_filter *filters_orig = block->filters;
 block->filters = filters;

 if (lzma_block_header_size(block) != LZMA_OK) {
  block->filters = filters_orig;
  return LZMA_PROG_ERROR;
 }






 assert(block->compressed_size == lzma2_bound(in_size));
 if (out_size - *out_pos
   < block->header_size + block->compressed_size) {
  block->filters = filters_orig;
  return LZMA_BUF_ERROR;
 }

 if (lzma_block_header_encode(block, out + *out_pos) != LZMA_OK) {
  block->filters = filters_orig;
  return LZMA_PROG_ERROR;
 }

 block->filters = filters_orig;
 *out_pos += block->header_size;


 size_t in_pos = 0;
 uint8_t control = 0x01;

 while (in_pos < in_size) {


  out[(*out_pos)++] = control;
  control = 0x02;


  const size_t copy_size
    = my_min(in_size - in_pos, LZMA2_CHUNK_MAX);
  out[(*out_pos)++] = (copy_size - 1) >> 8;
  out[(*out_pos)++] = (copy_size - 1) & 0xFF;


  assert(*out_pos + copy_size <= out_size);
  memcpy(out + *out_pos, in + in_pos, copy_size);

  in_pos += copy_size;
  *out_pos += copy_size;
 }


 out[(*out_pos)++] = 0x00;
 assert(*out_pos <= out_size);

 return LZMA_OK;
}
