
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char const) ;

__attribute__((used)) static const char *delspc(const char *ptr) {
 while (*ptr && isspace ((const unsigned char) *ptr))
  ptr++;
 if (*ptr == ';') {
  ptr = "";
 }
 return ptr;
}
