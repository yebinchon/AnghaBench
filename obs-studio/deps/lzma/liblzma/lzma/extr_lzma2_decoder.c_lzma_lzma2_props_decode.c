
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int lzma_ret ;
struct TYPE_3__ {int dict_size; scalar_t__ preset_dict_size; int * preset_dict; } ;
typedef TYPE_1__ lzma_options_lzma ;
typedef int lzma_allocator ;


 int LZMA_MEM_ERROR ;
 int LZMA_OK ;
 int LZMA_OPTIONS_ERROR ;
 int UINT32_MAX ;
 TYPE_1__* lzma_alloc (int,int *) ;

extern lzma_ret
lzma_lzma2_props_decode(void **options, lzma_allocator *allocator,
  const uint8_t *props, size_t props_size)
{
 if (props_size != 1)
  return LZMA_OPTIONS_ERROR;


 if (props[0] & 0xC0)
  return LZMA_OPTIONS_ERROR;


 if (props[0] > 40)
  return LZMA_OPTIONS_ERROR;

 lzma_options_lzma *opt = lzma_alloc(
   sizeof(lzma_options_lzma), allocator);
 if (opt == ((void*)0))
  return LZMA_MEM_ERROR;

 if (props[0] == 40) {
  opt->dict_size = UINT32_MAX;
 } else {
  opt->dict_size = 2 | (props[0] & 1);
  opt->dict_size <<= props[0] / 2 + 11;
 }

 opt->preset_dict = ((void*)0);
 opt->preset_dict_size = 0;

 *options = opt;

 return LZMA_OK;
}
