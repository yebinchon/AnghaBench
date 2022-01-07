
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;


 int O_RDONLY ;
 int PG_BINARY ;
 int close (int) ;
 int free (char*) ;
 scalar_t__ fstat (int,struct stat*) ;
 int memcpy (char*,char*,int) ;
 int open (char const*,int,int ) ;
 char* pg_malloc (int) ;
 int read (int,char*,int) ;

__attribute__((used)) static char **
readfile(const char *path, int *numlines)
{
 int fd;
 int nlines;
 char **result;
 char *buffer;
 char *linebegin;
 int i;
 int n;
 int len;
 struct stat statbuf;

 *numlines = 0;
 fd = open(path, O_RDONLY | PG_BINARY, 0);
 if (fd < 0)
  return ((void*)0);
 if (fstat(fd, &statbuf) < 0)
 {
  close(fd);
  return ((void*)0);
 }
 if (statbuf.st_size == 0)
 {

  close(fd);
  result = (char **) pg_malloc(sizeof(char *));
  *result = ((void*)0);
  return result;
 }
 buffer = pg_malloc(statbuf.st_size + 1);

 len = read(fd, buffer, statbuf.st_size + 1);
 close(fd);
 if (len != statbuf.st_size)
 {

  free(buffer);
  return ((void*)0);
 }






 nlines = 0;
 for (i = 0; i < len; i++)
 {
  if (buffer[i] == '\n')
   nlines++;
 }


 result = (char **) pg_malloc((nlines + 1) * sizeof(char *));
 *numlines = nlines;


 linebegin = buffer;
 n = 0;
 for (i = 0; i < len; i++)
 {
  if (buffer[i] == '\n')
  {
   int slen = &buffer[i] - linebegin;
   char *linebuf = pg_malloc(slen + 1);

   memcpy(linebuf, linebegin, slen);

   if (slen > 0 && linebuf[slen - 1] == '\r')
    slen--;
   linebuf[slen] = '\0';
   result[n++] = linebuf;
   linebegin = &buffer[i + 1];
  }
 }
 result[n] = ((void*)0);

 free(buffer);

 return result;
}
