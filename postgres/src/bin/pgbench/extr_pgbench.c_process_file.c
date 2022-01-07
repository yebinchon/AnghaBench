
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ParseScript (char*,char const*,int) ;
 int errno ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*,char*) ;
 int free (char*) ;
 char* read_file_contents (int *) ;
 int stderr ;
 int * stdin ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strerror (int ) ;

__attribute__((used)) static void
process_file(const char *filename, int weight)
{
 FILE *fd;
 char *buf;


 if (strcmp(filename, "-") == 0)
  fd = stdin;
 else if ((fd = fopen(filename, "r")) == ((void*)0))
 {
  fprintf(stderr, "could not open file \"%s\": %s\n",
    filename, strerror(errno));
  exit(1);
 }

 buf = read_file_contents(fd);

 if (ferror(fd))
 {
  fprintf(stderr, "could not read file \"%s\": %s\n",
    filename, strerror(errno));
  exit(1);
 }

 if (fd != stdin)
  fclose(fd);

 ParseScript(buf, filename, weight);

 free(buf);
}
