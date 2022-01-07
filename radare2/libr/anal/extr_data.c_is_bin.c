
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int memcmp (int const*,char*,int) ;

__attribute__((used)) static bool is_bin(const ut8 *buf, int size) {

 if ((size >= 4 && !memcmp (buf, "\xcf\xfa\xed\xfe", 4))) {
  return 1;
 }
 if ((size >= 4 && !memcmp (buf, "\x7f\x45\x4c\x46", 4))) {
  return 1;
 }
 if ((size >= 2 && !memcmp (buf, "MZ", 2))) {
  return 1;
 }
 return 0;
}
