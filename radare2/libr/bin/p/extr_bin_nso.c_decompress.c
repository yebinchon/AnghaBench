
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int uint32_t ;
typedef scalar_t__ int32_t ;


 int LZ4_decompress_safe (char const*,char*,int,int) ;

__attribute__((used)) static uint32_t decompress(const ut8 *cbuf, ut8 *obuf, int32_t csize, int32_t usize) {
 if (csize < 0 || usize < 0 || !cbuf || !obuf) {
  return -1;
 }
 return LZ4_decompress_safe ((const char*)cbuf, (char*)obuf, (uint32_t) csize, (uint32_t) usize);
}
