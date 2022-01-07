
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 char* _ (char*) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char*,char const*,char*) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 char* progname ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static long
file_size(const char *file)
{
 long r;
 FILE *f = fopen(file, "r");

 if (!f)
 {
  fprintf(stderr, _("%s: could not open file \"%s\" for reading: %s\n"),
    progname, file, strerror(errno));
  return -1;
 }
 fseek(f, 0, SEEK_END);
 r = ftell(f);
 fclose(f);
 return r;
}
