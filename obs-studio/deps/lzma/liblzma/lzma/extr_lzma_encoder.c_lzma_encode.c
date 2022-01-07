
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int lzma_ret ;
struct TYPE_4__ {scalar_t__ action; } ;
typedef TYPE_1__ lzma_mf ;
typedef int lzma_coder ;


 int LZMA_OPTIONS_ERROR ;
 scalar_t__ LZMA_SYNC_FLUSH ;
 int UINT32_MAX ;
 int lzma_lzma_encode (int *,TYPE_1__*,int *,size_t*,size_t,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static lzma_ret
lzma_encode(lzma_coder *restrict coder, lzma_mf *restrict mf,
  uint8_t *restrict out, size_t *restrict out_pos,
  size_t out_size)
{

 if (unlikely(mf->action == LZMA_SYNC_FLUSH))
  return LZMA_OPTIONS_ERROR;

 return lzma_lzma_encode(coder, mf, out, out_pos, out_size, UINT32_MAX);
}
