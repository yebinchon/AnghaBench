
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lzma_ret ;
typedef int lzma_next_coder ;
typedef int lzma_filter_info ;
typedef int lzma_allocator ;


 int lzma_simple_coder_init (int *,int *,int const*,int *,int ,int,int,int) ;
 int sparc_code ;

__attribute__((used)) static lzma_ret
sparc_coder_init(lzma_next_coder *next, lzma_allocator *allocator,
  const lzma_filter_info *filters, bool is_encoder)
{
 return lzma_simple_coder_init(next, allocator, filters,
   &sparc_code, 0, 4, 4, is_encoder);
}
