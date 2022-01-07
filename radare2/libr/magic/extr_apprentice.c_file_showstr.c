
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char) ;
 int fputc (char,int *) ;

void file_showstr(FILE *fp, const char *s, size_t len) {
 for (;;) {
  char c = *s++;
  if (len == ~0U) {
   if (c == '\0') {
    break;
   }
  } else {
   if (len-- == 0) {
    break;
   }
  }
  if (c >= 040 && c <= 0176) {
   fputc (c, fp);
  } else {
   fputc ('\\', fp);
   switch (c) {
   case '\a': fputc('a', fp); break;
   case '\b': fputc('b', fp); break;
   case '\f': fputc('f', fp); break;
   case '\n': fputc('n', fp); break;
   case '\r': fputc('r', fp); break;
   case '\t': fputc('t', fp); break;
   case '\v': fputc('v', fp); break;
   default: fprintf(fp, "%.3o", c & 0377); break;
   }
  }
 }
}
