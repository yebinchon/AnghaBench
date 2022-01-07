
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ fgets (char*,int,int *) ;
 int strlen (char*) ;

int read_block(char *buf, int buf_size, FILE *fin)
{
 char *curr = buf, *const buf_end = buf + buf_size;

 while (buf_end - curr > 1 && fgets(curr, buf_end - curr, fin)) {
  if (*curr == '\n')
   return curr - buf;
  curr += strlen(curr);
 }

 return -1;
}
