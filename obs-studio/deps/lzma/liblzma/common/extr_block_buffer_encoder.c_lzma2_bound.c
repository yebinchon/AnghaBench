
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lzma_vli ;


 int COMPRESSED_SIZE_MAX ;
 int LZMA2_CHUNK_MAX ;
 int LZMA2_HEADER_UNCOMPRESSED ;

__attribute__((used)) static lzma_vli
lzma2_bound(lzma_vli uncompressed_size)
{

 if (uncompressed_size > COMPRESSED_SIZE_MAX)
  return 0;





 const lzma_vli overhead = ((uncompressed_size + LZMA2_CHUNK_MAX - 1)
    / LZMA2_CHUNK_MAX)
   * LZMA2_HEADER_UNCOMPRESSED + 1;


 if (COMPRESSED_SIZE_MAX - overhead < uncompressed_size)
  return 0;

 return uncompressed_size + overhead;
}
