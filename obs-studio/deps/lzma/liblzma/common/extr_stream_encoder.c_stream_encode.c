
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int lzma_vli ;
struct TYPE_11__ {int check; int backward_size; int version; } ;
typedef TYPE_2__ lzma_stream_flags ;
typedef int const lzma_ret ;
struct TYPE_14__ {int check; int uncompressed_size; int header_size; } ;
struct TYPE_13__ {int coder; int const (* code ) (int ,int *,int *,int *,int ,int *,size_t*,size_t,size_t const) ;} ;
struct TYPE_10__ {int coder; int const (* code ) (int ,int *,int const*,size_t*,size_t,int *,size_t*,size_t,size_t const) ;} ;
struct TYPE_12__ {int sequence; int block_encoder_is_initialized; int buffer_size; int buffer; TYPE_7__ block_options; int index; TYPE_6__ index_encoder; TYPE_1__ block_encoder; int buffer_pos; } ;
typedef TYPE_3__ lzma_coder ;
typedef int lzma_allocator ;
typedef size_t const lzma_action ;



 int const LZMA_OK ;
 int const LZMA_PROG_ERROR ;

 int const LZMA_STREAM_END ;
 int LZMA_STREAM_HEADER_SIZE ;







 int assert (int) ;
 int block_encoder_init (TYPE_3__*,int *) ;
 int const lzma_block_header_encode (TYPE_7__*,int ) ;
 int lzma_block_unpadded_size (TYPE_7__*) ;
 int lzma_bufcpy (int ,int *,int ,int *,size_t*,size_t) ;
 int lzma_index_append (int ,int *,int const,int ) ;
 int lzma_index_encoder_init (TYPE_6__*,int *,int ) ;
 int lzma_index_size (int ) ;
 int const lzma_stream_footer_encode (TYPE_2__ const*,int ) ;
 int return_if_error (int ) ;
 int const stub1 (int ,int *,int const*,size_t*,size_t,int *,size_t*,size_t,size_t const) ;
 int const stub2 (int ,int *,int *,int *,int ,int *,size_t*,size_t,size_t const) ;

__attribute__((used)) static lzma_ret
stream_encode(lzma_coder *coder, lzma_allocator *allocator,
  const uint8_t *restrict in, size_t *restrict in_pos,
  size_t in_size, uint8_t *restrict out,
  size_t *restrict out_pos, size_t out_size, lzma_action action)
{

 while (*out_pos < out_size)
 switch (coder->sequence) {
 case 128:
 case 132:
 case 129:
  lzma_bufcpy(coder->buffer, &coder->buffer_pos,
    coder->buffer_size, out, out_pos, out_size);
  if (coder->buffer_pos < coder->buffer_size)
   return LZMA_OK;

  if (coder->sequence == 129)
   return LZMA_STREAM_END;

  coder->buffer_pos = 0;
  ++coder->sequence;
  break;

 case 131: {
  if (*in_pos == in_size) {



   if (action != 136)
    return action == 135
      ? LZMA_OK : LZMA_STREAM_END;
   return_if_error(lzma_index_encoder_init(
     &coder->index_encoder, allocator,
     coder->index));
   coder->sequence = 130;
   break;
  }




  if (!coder->block_encoder_is_initialized)
   return_if_error(block_encoder_init(coder, allocator));



  coder->block_encoder_is_initialized = 0;



  if (lzma_block_header_encode(&coder->block_options,
    coder->buffer) != LZMA_OK)
   return LZMA_PROG_ERROR;

  coder->buffer_size = coder->block_options.header_size;
  coder->sequence = 132;
  break;
 }

 case 133: {
  static const lzma_action convert[4] = {
   135,
   134,
   136,
   136,
  };

  const lzma_ret ret = coder->block_encoder.code(
    coder->block_encoder.coder, allocator,
    in, in_pos, in_size,
    out, out_pos, out_size, convert[action]);
  if (ret != LZMA_STREAM_END || action == 134)
   return ret;


  const lzma_vli unpadded_size = lzma_block_unpadded_size(
    &coder->block_options);
  assert(unpadded_size != 0);
  return_if_error(lzma_index_append(coder->index, allocator,
    unpadded_size,
    coder->block_options.uncompressed_size));

  coder->sequence = 131;
  break;
 }

 case 130: {


  const lzma_ret ret = coder->index_encoder.code(
    coder->index_encoder.coder, allocator,
    ((void*)0), ((void*)0), 0,
    out, out_pos, out_size, 135);
  if (ret != LZMA_STREAM_END)
   return ret;


  const lzma_stream_flags stream_flags = {
   .version = 0,
   .backward_size = lzma_index_size(coder->index),
   .check = coder->block_options.check,
  };

  if (lzma_stream_footer_encode(&stream_flags, coder->buffer)
    != LZMA_OK)
   return LZMA_PROG_ERROR;

  coder->buffer_size = LZMA_STREAM_HEADER_SIZE;
  coder->sequence = 129;
  break;
 }

 default:
  assert(0);
  return LZMA_PROG_ERROR;
 }

 return LZMA_OK;
}
