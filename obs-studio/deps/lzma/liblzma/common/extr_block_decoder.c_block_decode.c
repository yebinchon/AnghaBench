
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int const lzma_ret ;
struct TYPE_10__ {int u8; } ;
struct TYPE_12__ {TYPE_3__ buffer; } ;
struct TYPE_8__ {int coder; int const (* code ) (int ,int *,int const*,size_t*,size_t,int*,size_t*,size_t,int ) ;} ;
struct TYPE_11__ {int sequence; int compressed_size; int compressed_limit; int uncompressed_size; size_t const check_pos; TYPE_5__ check; TYPE_2__* block; TYPE_1__ next; } ;
typedef TYPE_4__ lzma_coder ;
typedef int lzma_allocator ;
typedef int lzma_action ;
struct TYPE_9__ {int uncompressed_size; int compressed_size; int raw_check; int check; } ;


 int LZMA_CHECK_NONE ;
 int const LZMA_DATA_ERROR ;
 int const LZMA_OK ;
 int const LZMA_PROG_ERROR ;
 int const LZMA_STREAM_END ;



 int is_size_valid (int,int) ;
 int lzma_bufcpy (int const*,size_t*,size_t,int ,size_t const*,size_t const) ;
 int lzma_check_finish (TYPE_5__*,int ) ;
 int lzma_check_is_supported (int ) ;
 size_t lzma_check_size (int ) ;
 int lzma_check_update (TYPE_5__*,int ,int*,size_t const) ;
 int memcmp (int ,int ,size_t const) ;
 int const stub1 (int ,int *,int const*,size_t*,size_t,int*,size_t*,size_t,int ) ;
 int update_size (int*,size_t const,int) ;

__attribute__((used)) static lzma_ret
block_decode(lzma_coder *coder, lzma_allocator *allocator,
  const uint8_t *restrict in, size_t *restrict in_pos,
  size_t in_size, uint8_t *restrict out,
  size_t *restrict out_pos, size_t out_size, lzma_action action)
{
 switch (coder->sequence) {
 case 129: {
  const size_t in_start = *in_pos;
  const size_t out_start = *out_pos;

  const lzma_ret ret = coder->next.code(coder->next.coder,
    allocator, in, in_pos, in_size,
    out, out_pos, out_size, action);

  const size_t in_used = *in_pos - in_start;
  const size_t out_used = *out_pos - out_start;



  if (update_size(&coder->compressed_size, in_used,
     coder->compressed_limit)
    || update_size(&coder->uncompressed_size,
     out_used,
     coder->block->uncompressed_size))
   return LZMA_DATA_ERROR;

  lzma_check_update(&coder->check, coder->block->check,
    out + out_start, out_used);

  if (ret != LZMA_STREAM_END)
   return ret;



  if (!is_size_valid(coder->compressed_size,
     coder->block->compressed_size)
    || !is_size_valid(coder->uncompressed_size,
     coder->block->uncompressed_size))
   return LZMA_DATA_ERROR;



  coder->block->compressed_size = coder->compressed_size;
  coder->block->uncompressed_size = coder->uncompressed_size;

  coder->sequence = 128;
 }



 case 128:

  while (coder->compressed_size & 3) {
   if (*in_pos >= in_size)
    return LZMA_OK;





   ++coder->compressed_size;

   if (in[(*in_pos)++] != 0x00)
    return LZMA_DATA_ERROR;
  }

  if (coder->block->check == LZMA_CHECK_NONE)
   return LZMA_STREAM_END;

  lzma_check_finish(&coder->check, coder->block->check);
  coder->sequence = 130;



 case 130: {
  const size_t check_size = lzma_check_size(coder->block->check);
  lzma_bufcpy(in, in_pos, in_size, coder->block->raw_check,
    &coder->check_pos, check_size);
  if (coder->check_pos < check_size)
   return LZMA_OK;




  if (lzma_check_is_supported(coder->block->check)
    && memcmp(coder->block->raw_check,
     coder->check.buffer.u8,
     check_size) != 0)
   return LZMA_DATA_ERROR;

  return LZMA_STREAM_END;
 }
 }

 return LZMA_PROG_ERROR;
}
