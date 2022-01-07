
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;



 int add_byte (int,char**,size_t,size_t*) ;
 int getc (int *) ;

__attribute__((used)) static ssize_t compat_getline(char **lineptr, size_t *n, FILE *stream)
{
 char *line = *lineptr;
 size_t slen = 0;

 for (;;) {
  int c = getc(stream);

  switch (c) {
  case '\n':
   if (add_byte(c, &line, slen, n) < 0)
    goto e_out;
   slen++;

  case 128:
   if (add_byte('\0', &line, slen, n) < 0)
    goto e_out;
   *lineptr = line;
   if (slen == 0)
    return -1;
   return slen;
  default:
   if (add_byte(c, &line, slen, n) < 0)
    goto e_out;
   slen++;
  }
 }

e_out:
 line[slen-1] = '\0';
 *lineptr = line;
 return -1;
}
