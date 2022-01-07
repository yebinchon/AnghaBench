
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int exit (int) ;
 int fclose (int *) ;
 int fgetc (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int pg_log_error (char*,char const*) ;
 scalar_t__ pg_malloc (int) ;
 char* pg_strdup (char*) ;
 int rewind (int *) ;

__attribute__((used)) static char **
readfile(const char *path)
{
 FILE *infile;
 int maxlength = 1,
    linelen = 0;
 int nlines = 0;
 int n;
 char **result;
 char *buffer;
 int c;

 if ((infile = fopen(path, "r")) == ((void*)0))
 {
  pg_log_error("could not open file \"%s\" for reading: %m", path);
  exit(1);
 }



 while ((c = fgetc(infile)) != EOF)
 {
  linelen++;
  if (c == '\n')
  {
   nlines++;
   if (linelen > maxlength)
    maxlength = linelen;
   linelen = 0;
  }
 }


 if (linelen)
  nlines++;
 if (linelen > maxlength)
  maxlength = linelen;


 result = (char **) pg_malloc((nlines + 1) * sizeof(char *));
 buffer = (char *) pg_malloc(maxlength + 1);


 rewind(infile);
 n = 0;
 while (fgets(buffer, maxlength + 1, infile) != ((void*)0) && n < nlines)
  result[n++] = pg_strdup(buffer);

 fclose(infile);
 free(buffer);
 result[n] = ((void*)0);

 return result;
}
