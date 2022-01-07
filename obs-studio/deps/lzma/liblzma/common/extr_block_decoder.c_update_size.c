
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lzma_vli ;


 scalar_t__ LZMA_VLI_MAX ;

__attribute__((used)) static inline bool
update_size(lzma_vli *size, lzma_vli add, lzma_vli limit)
{
 if (limit > LZMA_VLI_MAX)
  limit = LZMA_VLI_MAX;

 if (limit < *size || limit - *size < add)
  return 1;

 *size += add;

 return 0;
}
