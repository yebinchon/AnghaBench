
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 char* _ (char*) ;
 int errno ;
 int fclose (int *) ;
 int fgetc (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char*,char const*,char*) ;
 char* progname ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static int
file_line_count(const char *file)
{
 int c;
 int l = 0;
 FILE *f = fopen(file, "r");

 if (!f)
 {
  fprintf(stderr, _("%s: could not open file \"%s\" for reading: %s\n"),
    progname, file, strerror(errno));
  return -1;
 }
 while ((c = fgetc(f)) != EOF)
 {
  if (c == '\n')
   l++;
 }
 fclose(f);
 return l;
}
