
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int const lzma_ret ;
struct TYPE_6__ {int coder; int const (* code ) (int ,int *,int const*,size_t*,size_t,int*,size_t*,size_t,int ) ;} ;
struct TYPE_5__ {int sequence; int flags; TYPE_2__ next; int memlimit; } ;
typedef TYPE_1__ lzma_coder ;
typedef int lzma_allocator ;
typedef int lzma_action ;


 int LZMA_CONCATENATED ;
 int const LZMA_DATA_ERROR ;
 int LZMA_FINISH ;
 int const LZMA_GET_CHECK ;
 int const LZMA_NO_CHECK ;
 int const LZMA_OK ;
 int const LZMA_PROG_ERROR ;
 int const LZMA_STREAM_END ;
 int LZMA_TELL_ANY_CHECK ;
 int LZMA_TELL_NO_CHECK ;



 int assert (int ) ;
 int lzma_alone_decoder_init (TYPE_2__*,int *,int ,int) ;
 int lzma_stream_decoder_init (TYPE_2__*,int *,int ,int) ;
 int return_if_error (int ) ;
 int const stub1 (int ,int *,int const*,size_t*,size_t,int*,size_t*,size_t,int ) ;

__attribute__((used)) static lzma_ret
auto_decode(lzma_coder *coder, lzma_allocator *allocator,
  const uint8_t *restrict in, size_t *restrict in_pos,
  size_t in_size, uint8_t *restrict out,
  size_t *restrict out_pos, size_t out_size, lzma_action action)
{
 switch (coder->sequence) {
 case 128:
  if (*in_pos >= in_size)
   return LZMA_OK;



  coder->sequence = 130;





  if (in[*in_pos] == 0xFD) {
   return_if_error(lzma_stream_decoder_init(
     &coder->next, allocator,
     coder->memlimit, coder->flags));
  } else {
   return_if_error(lzma_alone_decoder_init(&coder->next,
     allocator, coder->memlimit, 1));





   if (coder->flags & LZMA_TELL_NO_CHECK)
    return LZMA_NO_CHECK;

   if (coder->flags & LZMA_TELL_ANY_CHECK)
    return LZMA_GET_CHECK;
  }



 case 130: {
  const lzma_ret ret = coder->next.code(
    coder->next.coder, allocator,
    in, in_pos, in_size,
    out, out_pos, out_size, action);
  if (ret != LZMA_STREAM_END
    || (coder->flags & LZMA_CONCATENATED) == 0)
   return ret;

  coder->sequence = 129;
 }



 case 129:



  if (*in_pos < in_size)
   return LZMA_DATA_ERROR;

  return action == LZMA_FINISH ? LZMA_STREAM_END : LZMA_OK;

 default:
  assert(0);
  return LZMA_PROG_ERROR;
 }
}
