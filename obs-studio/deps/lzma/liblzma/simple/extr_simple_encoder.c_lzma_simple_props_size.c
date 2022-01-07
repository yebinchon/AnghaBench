
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int lzma_ret ;
struct TYPE_2__ {scalar_t__ start_offset; } ;
typedef TYPE_1__ lzma_options_bcj ;


 int LZMA_OK ;

extern lzma_ret
lzma_simple_props_size(uint32_t *size, const void *options)
{
 const lzma_options_bcj *const opt = options;
 *size = (opt == ((void*)0) || opt->start_offset == 0) ? 0 : 4;
 return LZMA_OK;
}
