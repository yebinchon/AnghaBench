
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int data ;
 int dataLen ;
 int free (int *) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (int *,int ,int) ;
 int uncompress (int *,size_t*,int *,size_t) ;
 int write_zlib_header (int *) ;

__attribute__((used)) static void check_decompress(uint8_t *compr, size_t comprLen) {



  size_t copyLen = dataLen + 2;
  uint8_t *copy = (uint8_t *)malloc(copyLen);
  memcpy(copy + 2, data, dataLen);
  write_zlib_header(copy);

  uncompress(compr, &comprLen, copy, copyLen);
  free(copy);
}
