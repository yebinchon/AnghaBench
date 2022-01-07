
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 char* r_str_ndup (char const*,int) ;

__attribute__((used)) static char *readString (ut8 *p, int off, int len) {
 if (off < 0 || off >= len) {
  return ((void*)0);
 }
 return r_str_ndup ((const char *)p + off, len - off);
}
