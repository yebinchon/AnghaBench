
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;
typedef int FILE ;


 int * AllocateFile (char*,int ) ;
 char* DataDir ;
 int ExitPostmaster (int) ;
 int FreeFile (int *) ;
 int MAXPGPATH ;
 int PG_BINARY_R ;
 int errno ;
 int progname ;
 int snprintf (char*,int,char*,char*) ;
 int strerror (int ) ;
 int write_stderr (char*,int ,char*,char*,int ) ;

__attribute__((used)) static void
checkControlFile(void)
{
 char path[MAXPGPATH];
 FILE *fp;

 snprintf(path, sizeof(path), "%s/global/pg_control", DataDir);

 fp = AllocateFile(path, PG_BINARY_R);
 if (fp == ((void*)0))
 {
  write_stderr("%s: could not find the database system\n"
      "Expected to find it in the directory \"%s\",\n"
      "but could not open file \"%s\": %s\n",
      progname, DataDir, path, strerror(errno));
  ExitPostmaster(2);
 }
 FreeFile(fp);
}
