
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lzma_ret ;
typedef int lzma_next_coder ;
typedef int lzma_filter_info ;
typedef int lzma_allocator ;


 int sparc_coder_init (int *,int *,int const*,int) ;

extern lzma_ret
lzma_simple_sparc_encoder_init(lzma_next_coder *next,
  lzma_allocator *allocator, const lzma_filter_info *filters)
{
 return sparc_coder_init(next, allocator, filters, 1);
}
