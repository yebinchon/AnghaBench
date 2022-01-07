
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ const lzma_ret ;
struct TYPE_5__ {size_t pos; size_t filtered; size_t size; int allocated; scalar_t__ end_was_reached; int * buffer; } ;
typedef TYPE_1__ lzma_coder ;
typedef int lzma_allocator ;
typedef scalar_t__ lzma_action ;


 scalar_t__ const LZMA_OK ;
 scalar_t__ const LZMA_OPTIONS_ERROR ;
 scalar_t__ const LZMA_STREAM_END ;
 scalar_t__ LZMA_SYNC_FLUSH ;
 int assert (int) ;
 void* call_filter (TYPE_1__*,int *,size_t const) ;
 scalar_t__ copy_or_code (TYPE_1__*,int *,int const*,size_t*,size_t,int *,size_t*,size_t,scalar_t__) ;
 int lzma_bufcpy (int *,size_t*,size_t,int *,size_t*,size_t) ;
 int memcpy (int *,int *,size_t const) ;
 int memmove (int *,int *,size_t const) ;

__attribute__((used)) static lzma_ret
simple_code(lzma_coder *coder, lzma_allocator *allocator,
  const uint8_t *restrict in, size_t *restrict in_pos,
  size_t in_size, uint8_t *restrict out,
  size_t *restrict out_pos, size_t out_size, lzma_action action)
{





 if (action == LZMA_SYNC_FLUSH)
  return LZMA_OPTIONS_ERROR;


 if (coder->pos < coder->filtered) {
  lzma_bufcpy(coder->buffer, &coder->pos, coder->filtered,
    out, out_pos, out_size);



  if (coder->pos < coder->filtered)
   return LZMA_OK;

  if (coder->end_was_reached) {
   assert(coder->filtered == coder->size);
   return LZMA_STREAM_END;
  }
 }


 coder->filtered = 0;

 assert(!coder->end_was_reached);






 const size_t out_avail = out_size - *out_pos;
 const size_t buf_avail = coder->size - coder->pos;
 if (out_avail > buf_avail || buf_avail == 0) {


  const size_t out_start = *out_pos;





  memcpy(out + *out_pos, coder->buffer + coder->pos, buf_avail);
  *out_pos += buf_avail;


  {
   const lzma_ret ret = copy_or_code(coder, allocator,
     in, in_pos, in_size,
     out, out_pos, out_size, action);
   assert(ret != LZMA_STREAM_END);
   if (ret != LZMA_OK)
    return ret;
  }


  const size_t size = *out_pos - out_start;
  const size_t filtered = call_filter(
    coder, out + out_start, size);

  const size_t unfiltered = size - filtered;
  assert(unfiltered <= coder->allocated / 2);



  coder->pos = 0;
  coder->size = unfiltered;

  if (coder->end_was_reached) {


   coder->size = 0;

  } else if (unfiltered > 0) {


   *out_pos -= unfiltered;
   memcpy(coder->buffer, out + *out_pos, unfiltered);
  }
 } else if (coder->pos > 0) {
  memmove(coder->buffer, coder->buffer + coder->pos, buf_avail);
  coder->size -= coder->pos;
  coder->pos = 0;
 }

 assert(coder->pos == 0);





 if (coder->size > 0) {
  {
   const lzma_ret ret = copy_or_code(coder, allocator,
     in, in_pos, in_size,
     coder->buffer, &coder->size,
     coder->allocated, action);
   assert(ret != LZMA_STREAM_END);
   if (ret != LZMA_OK)
    return ret;
  }

  coder->filtered = call_filter(
    coder, coder->buffer, coder->size);



  if (coder->end_was_reached)
   coder->filtered = coder->size;


  lzma_bufcpy(coder->buffer, &coder->pos, coder->filtered,
    out, out_pos, out_size);
 }


 if (coder->end_was_reached && coder->pos == coder->size)
  return LZMA_STREAM_END;

 return LZMA_OK;
}
