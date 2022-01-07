
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char * nvmatch(char *s1, char *s2)
{
 while(*s1 == *s2++)
 {
  if(*s1++ == '=') {
   return s2;
  }
 }
 if(*s1 == '\0' && *(s2-1) == '=') {
  return s2;
 }
 return ((void*)0);
}
