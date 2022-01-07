
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
struct Copy64 {double d; void* i; } ;


 int memcpy (void**,void*,int) ;
 void* php_pack_reverse_int64 (void*) ;

__attribute__((used)) static double php_pack_parse_double(int is_little_endian, void * src)
{
 union Copy64 {
  double d;
  uint64_t i;
 } m;
 memcpy(&m.i, src, sizeof(double));






 if (!is_little_endian) {
  m.i = php_pack_reverse_int64(m.i);
 }


 return m.d;
}
