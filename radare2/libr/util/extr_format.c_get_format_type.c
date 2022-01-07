
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strdup (char*) ;

__attribute__((used)) static char *get_format_type(const char fmt) {
 char *type = ((void*)0);
 switch (fmt) {
 case 'b':
 case 'C':
  type = strdup ("uint8_t");
  break;
 case 'c':
  type = strdup ("int8_t");
  break;
 case 'd':
 case 'i':
 case 'o':
 case 'x':
  type = strdup ("int32_t");
  break;
 case 'E':
  type = strdup ("enum");
  break;
 case 'f':
  type = strdup ("float");
  break;
 case 'F':
  type = strdup ("double");
  break;
 case 'q':
  type = strdup ("uint64_t");
  break;
 case 'u':
  type = strdup ("uleb128_t");
  break;
 case 'w':
  type = strdup ("uint16_t");
  break;
 case 'X':
  type = strdup ("uint8_t[]");
  break;
 case 'D':
 case 's':
 case 'S':
 case 't':
 case 'z':
 case 'Z':
  type = strdup ("char*");
 }
 return type;
}
