
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lzma_vli ;


 int index_size_unpadded (int ,int ) ;
 int vli_ceil4 (int ) ;

__attribute__((used)) static inline lzma_vli
index_size(lzma_vli count, lzma_vli index_list_size)
{
 return vli_ceil4(index_size_unpadded(count, index_list_size));
}
