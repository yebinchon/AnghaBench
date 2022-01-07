
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *pstrcpy(char *buf, int buf_size, const char *s)
{
 char *q, *q_end;
 int c;

 if (buf_size > 0) {
  q = buf;
  q_end = buf + buf_size - 1;
  while (q < q_end) {
   c = *s++;
   if (c == '\0') {
    break;
   }
   *q++ = c;
  }
  *q = '\0';
 }
 return buf;
}
