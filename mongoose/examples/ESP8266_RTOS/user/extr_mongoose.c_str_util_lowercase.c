
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tolower (unsigned char const) ;

__attribute__((used)) static int str_util_lowercase(const char *s) {
  return tolower(*(const unsigned char *) s);
}
