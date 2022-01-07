
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ calloc (int,size_t) ;
 int check_compress_level (int *,size_t,int *,size_t,int) ;
 int check_decompress (int *,size_t) ;
 int compressBound (size_t) ;
 int const* data ;
 size_t dataLen ;
 int free (int *) ;

int LLVMFuzzerTestOneInput(const uint8_t *d, size_t size) {

  size_t comprLen = 100 + 2 * compressBound(size);
  size_t uncomprLen = size;
  uint8_t *compr, *uncompr;


  static size_t kMaxSize = 1024 * 1024;

  if (size < 1 || size > kMaxSize)
    return 0;

  data = d;
  dataLen = size;
  compr = (uint8_t *)calloc(1, comprLen);
  uncompr = (uint8_t *)calloc(1, uncomprLen);

  check_compress_level(compr, comprLen, uncompr, uncomprLen, 1);
  check_compress_level(compr, comprLen, uncompr, uncomprLen, 3);
  check_compress_level(compr, comprLen, uncompr, uncomprLen, 6);
  check_compress_level(compr, comprLen, uncompr, uncomprLen, 7);

  check_decompress(compr, comprLen);

  free(compr);
  free(uncompr);


  return 0;
}
