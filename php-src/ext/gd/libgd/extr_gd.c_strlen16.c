
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int strlen16 (unsigned short *s)
{
 int len = 0;
 while (*s) {
  s++;
  len++;
 }
 return len;
}
