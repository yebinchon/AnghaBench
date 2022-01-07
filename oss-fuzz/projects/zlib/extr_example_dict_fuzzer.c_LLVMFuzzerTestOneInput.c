
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t const* data ;
 size_t dataLen ;
 size_t dictionaryLen ;
 int free (size_t*) ;
 int test_dict_deflate (size_t**,size_t*) ;
 int test_dict_inflate (size_t*,size_t) ;

int LLVMFuzzerTestOneInput(const uint8_t *d, size_t size) {
  size_t comprLen = 0;
  uint8_t *compr;


  static size_t kMaxSize = 100 * 1024;

  if (size < 1 || size > kMaxSize)
    return 0;

  data = d;
  dataLen = size;




  dictionaryLen = data[0];
  if (dictionaryLen > dataLen)
    dictionaryLen = dataLen;

  test_dict_deflate(&compr, &comprLen);
  test_dict_inflate(compr, comprLen);

  free(compr);


  return 0;
}
