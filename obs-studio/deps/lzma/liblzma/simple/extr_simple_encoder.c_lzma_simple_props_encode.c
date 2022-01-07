
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int lzma_ret ;
struct TYPE_2__ {scalar_t__ start_offset; } ;
typedef TYPE_1__ lzma_options_bcj ;


 int LZMA_OK ;
 int unaligned_write32le (int *,scalar_t__) ;

extern lzma_ret
lzma_simple_props_encode(const void *options, uint8_t *out)
{
 const lzma_options_bcj *const opt = options;



 if (opt == ((void*)0) || opt->start_offset == 0)
  return LZMA_OK;

 unaligned_write32le(out, opt->start_offset);

 return LZMA_OK;
}
