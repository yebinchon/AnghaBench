
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char xmlChar ;



void whiteSpace_replace(xmlChar* str)
{
 while (*str != '\0') {
  if (*str == '\x9' || *str == '\xA' || *str == '\xD') {
   *str = ' ';
  }
  str++;
 }
}
