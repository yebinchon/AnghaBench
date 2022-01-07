
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 size_t BUFSIZ ;
 size_t fread (char*,int,size_t,int *) ;
 scalar_t__ pg_malloc (size_t) ;
 scalar_t__ pg_realloc (char*,size_t) ;

__attribute__((used)) static char *
read_file_contents(FILE *fd)
{
 char *buf;
 size_t buflen = BUFSIZ;
 size_t used = 0;

 buf = (char *) pg_malloc(buflen);

 for (;;)
 {
  size_t nread;

  nread = fread(buf + used, 1, BUFSIZ, fd);
  used += nread;

  if (nread < BUFSIZ)
   break;

  buflen += BUFSIZ;
  buf = (char *) pg_realloc(buf, buflen);
 }

 buf[used] = '\0';

 return buf;
}
