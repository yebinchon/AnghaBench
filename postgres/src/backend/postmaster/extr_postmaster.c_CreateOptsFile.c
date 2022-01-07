
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LOG ;
 int OPTS_FILE ;
 int elog (int ,char*,int ) ;
 scalar_t__ fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,char*) ;
 int fputs (char*,int *) ;

__attribute__((used)) static bool
CreateOptsFile(int argc, char *argv[], char *fullprogname)
{
 FILE *fp;
 int i;



 if ((fp = fopen("postmaster.opts", "w")) == ((void*)0))
 {
  elog(LOG, "could not create file \"%s\": %m", "postmaster.opts");
  return 0;
 }

 fprintf(fp, "%s", fullprogname);
 for (i = 1; i < argc; i++)
  fprintf(fp, " \"%s\"", argv[i]);
 fputs("\n", fp);

 if (fclose(fp))
 {
  elog(LOG, "could not write file \"%s\": %m", "postmaster.opts");
  return 0;
 }

 return 1;
}
