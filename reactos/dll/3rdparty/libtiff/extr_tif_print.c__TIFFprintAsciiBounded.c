
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char const) ;
 int fputc (char const,int *) ;
 scalar_t__ isprint (int) ;

__attribute__((used)) static void
_TIFFprintAsciiBounded(FILE* fd, const char* cp, size_t max_chars)
{
 for (; max_chars > 0 && *cp != '\0'; cp++, max_chars--) {
  const char* tp;

  if (isprint((int)*cp)) {
   fputc(*cp, fd);
   continue;
  }
  for (tp = "\tt\bb\rr\nn\vv"; *tp; tp++)
   if (*tp++ == *cp)
    break;
  if (*tp)
   fprintf(fd, "\\%c", *tp);
  else
   fprintf(fd, "\\%03o", *cp & 0xff);
 }
}
