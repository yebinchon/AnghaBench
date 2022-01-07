
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_LIB_TYPE_LAST ;
 char const** r_lib_types ;

__attribute__((used)) static const char *__lib_types_get(int idx) {
 if (idx < 0 || idx > R_LIB_TYPE_LAST - 1) {
  return "unk";
 }
 return r_lib_types[idx];
}
