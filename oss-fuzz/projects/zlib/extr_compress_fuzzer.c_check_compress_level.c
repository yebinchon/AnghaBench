
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int assert (int) ;
 int compress2 (int *,size_t*,int ,size_t,int) ;
 int data ;
 size_t dataLen ;
 scalar_t__ memcmp (int ,int *,size_t) ;
 int uncompress (int *,size_t*,int *,size_t) ;

__attribute__((used)) static void check_compress_level(uint8_t *compr, size_t comprLen,
                                 uint8_t *uncompr, size_t uncomprLen,
                                 int level) {
  compress2(compr, &comprLen, data, dataLen, level);
  uncompress(uncompr, &uncomprLen, compr, comprLen);


  assert(dataLen == uncomprLen);
  assert(0 == memcmp(data, uncompr, dataLen));
}
