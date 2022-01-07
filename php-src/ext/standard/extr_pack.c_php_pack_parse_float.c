
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct Copy32 {float f; void* i; } ;


 int memcpy (void**,void*,int) ;
 void* php_pack_reverse_int32 (void*) ;

__attribute__((used)) static float php_pack_parse_float(int is_little_endian, void * src)
{
 union Copy32 {
  float f;
  uint32_t i;
 } m;
 memcpy(&m.i, src, sizeof(float));






 if (!is_little_endian) {
  m.i = php_pack_reverse_int32(m.i);
 }


 return m.f;
}
