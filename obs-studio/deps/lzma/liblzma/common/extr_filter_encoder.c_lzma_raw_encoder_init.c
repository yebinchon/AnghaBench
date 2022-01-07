
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lzma_ret ;
typedef int lzma_next_coder ;
typedef int lzma_filter_find ;
typedef int lzma_filter ;
typedef int lzma_allocator ;


 int encoder_find ;
 int lzma_raw_coder_init (int *,int *,int const*,int ,int) ;

extern lzma_ret
lzma_raw_encoder_init(lzma_next_coder *next, lzma_allocator *allocator,
  const lzma_filter *options)
{
 return lzma_raw_coder_init(next, allocator,
   options, (lzma_filter_find)(&encoder_find), 1);
}
