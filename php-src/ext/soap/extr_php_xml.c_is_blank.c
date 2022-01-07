
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char xmlChar ;



__attribute__((used)) static int is_blank(const xmlChar* str)
{
 while (*str != '\0') {
  if (*str != ' ' && *str != 0x9 && *str != 0xa && *str != 0xd) {
   return 0;
  }
  str++;
 }
 return 1;
}
