
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putchar (char) ;

__attribute__((used)) static void putc_wrap(char c, int wrap, int *len) {
 if (wrap && *len >= wrap) {
  putchar ('\n');
  *len = 0;
 }
 putchar(c);
 (*len)++;
}
