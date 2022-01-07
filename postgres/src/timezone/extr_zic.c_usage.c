
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EXIT_SUCCESS ;
 char* PACKAGE_BUGREPORT ;
 char* _ (char*) ;
 int close_file (int *,int *,int *) ;
 int exit (int) ;
 int fprintf (int *,char*,char*,char*,char*) ;
 char* progname ;

__attribute__((used)) static void
usage(FILE *stream, int status)
{
 fprintf(stream,
   _("%s: usage is %s [ --version ] [ --help ] [ -v ] [ -P ] \\\n"
     "\t[ -b {slim|fat} ] [ -d directory ] [ -l localtime ]"
     " [ -L leapseconds ] \\\n"
     "\t[ -p posixrules ] [ -r '[@lo][/@hi]' ] [ -t localtime-link ] \\\n"
     "\t[ filename ... ]\n\n"
     "Report bugs to %s.\n"),
   progname, progname, PACKAGE_BUGREPORT);
 if (status == EXIT_SUCCESS)
  close_file(stream, ((void*)0), ((void*)0));
 exit(status);
}
