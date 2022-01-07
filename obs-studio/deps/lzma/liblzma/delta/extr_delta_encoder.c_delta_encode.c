
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int lzma_ret ;
struct TYPE_6__ {int coder; int (* code ) (int ,int *,int const*,size_t*,size_t,int *,size_t*,size_t,scalar_t__) ;} ;
struct TYPE_7__ {TYPE_1__ next; } ;
typedef TYPE_2__ lzma_coder ;
typedef int lzma_allocator ;
typedef scalar_t__ lzma_action ;


 int LZMA_OK ;
 scalar_t__ LZMA_RUN ;
 int LZMA_STREAM_END ;
 int copy_and_encode (TYPE_2__*,int const*,int *,size_t const) ;
 int encode_in_place (TYPE_2__*,int *,size_t) ;
 size_t my_min (size_t const,size_t const) ;
 int stub1 (int ,int *,int const*,size_t*,size_t,int *,size_t*,size_t,scalar_t__) ;

__attribute__((used)) static lzma_ret
delta_encode(lzma_coder *coder, lzma_allocator *allocator,
  const uint8_t *restrict in, size_t *restrict in_pos,
  size_t in_size, uint8_t *restrict out,
  size_t *restrict out_pos, size_t out_size, lzma_action action)
{
 lzma_ret ret;

 if (coder->next.code == ((void*)0)) {
  const size_t in_avail = in_size - *in_pos;
  const size_t out_avail = out_size - *out_pos;
  const size_t size = my_min(in_avail, out_avail);

  copy_and_encode(coder, in + *in_pos, out + *out_pos, size);

  *in_pos += size;
  *out_pos += size;

  ret = action != LZMA_RUN && *in_pos == in_size
    ? LZMA_STREAM_END : LZMA_OK;

 } else {
  const size_t out_start = *out_pos;

  ret = coder->next.code(coder->next.coder, allocator,
    in, in_pos, in_size, out, out_pos, out_size,
    action);

  encode_in_place(coder, out + out_start, *out_pos - out_start);
 }

 return ret;
}
