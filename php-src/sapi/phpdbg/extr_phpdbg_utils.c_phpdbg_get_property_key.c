
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,int ) ;

char *phpdbg_get_property_key(char *key) {
 if (*key != 0) {
  return key;
 }
 return strchr(key + 1, 0) + 1;
}
