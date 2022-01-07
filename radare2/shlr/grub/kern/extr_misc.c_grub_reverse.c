
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int grub_strlen (char*) ;

__attribute__((used)) static inline void
grub_reverse (char *str) {
 char tmp, *p = str + grub_strlen (str) - 1;
 while (str < p) {
  tmp = *str;
  *str = *p;
  *p = tmp;
  str++;
  p--;
 }
}
