
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;


 int NB_PRIV_FIELDS ;
 int * parse_next_rsa_field (int const*,int*) ;

__attribute__((used)) static int check_rsa_fields(const ut8* start) {

 ut32 len = 0;
 int i;

 ut8 const* ptr = parse_next_rsa_field (start, &len);

 if (!len || len > 1024) {
  return 0;
 }
 for (i = 0; i < 10; i++) {
  if (!(ptr = parse_next_rsa_field (ptr, &len))) {
   return 0;
  }
 }
 return 1;
}
