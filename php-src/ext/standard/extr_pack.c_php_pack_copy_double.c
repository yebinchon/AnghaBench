
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
struct Copy64 {double d; void* i; } ;


 int memcpy (void*,double*,int) ;
 void* php_pack_reverse_int64 (void*) ;

__attribute__((used)) static void php_pack_copy_double(int is_little_endian, void * dst, double d)
{
 union Copy64 {
  double d;
  uint64_t i;
 } m;
 m.d = d;






 if (!is_little_endian) {
  m.i = php_pack_reverse_int64(m.i);
 }


 memcpy(dst, &m.d, sizeof(double));
}
