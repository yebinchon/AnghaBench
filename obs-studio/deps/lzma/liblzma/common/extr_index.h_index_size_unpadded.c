
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lzma_vli ;


 scalar_t__ lzma_vli_size (scalar_t__) ;

__attribute__((used)) static inline lzma_vli
index_size_unpadded(lzma_vli count, lzma_vli index_list_size)
{

 return 1 + lzma_vli_size(count) + index_list_size + 4;
}
