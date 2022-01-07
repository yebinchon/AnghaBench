
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 char* _ (char*) ;
 char* filename ;
 int fprintf (int ,char*,...) ;
 int linenum ;
 char* rfilename ;
 int rlinenum ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void
verror(const char *string, va_list args)
{




 if (filename)
  fprintf(stderr, _("\"%s\", line %d: "), filename, linenum);
 vfprintf(stderr, string, args);
 if (rfilename != ((void*)0))
  fprintf(stderr, _(" (rule from \"%s\", line %d)"),
    rfilename, rlinenum);
 fprintf(stderr, "\n");
}
