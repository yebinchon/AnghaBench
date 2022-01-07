
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct Copy32 {float f; void* i; } ;


 int memcpy (void*,float*,int) ;
 void* php_pack_reverse_int32 (void*) ;

__attribute__((used)) static void php_pack_copy_float(int is_little_endian, void * dst, float f)
{
 union Copy32 {
  float f;
  uint32_t i;
 } m;
 m.f = f;






 if (!is_little_endian) {
  m.i = php_pack_reverse_int32(m.i);
 }


 memcpy(dst, &m.f, sizeof(float));
}
