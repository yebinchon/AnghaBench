
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* itoa64 ;

__attribute__((used)) static void php_to64(char *s, int n)
{
 while (--n >= 0) {
  *s = itoa64[*s & 0x3f];
  s++;
 }
}
