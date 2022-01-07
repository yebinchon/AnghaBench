
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPGPATH ;


 int SET_RESTORE_COMMAND (char*,int ,int ) ;
 int WALFilePath ;
 char* archiveLocation ;
 int exit (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 char* nextWALFileName ;
 char* progname ;
 int restoreCommandType ;
 int snprintf (int ,int ,char*,char*,char*) ;
 scalar_t__ stat (char*,int *) ;
 int stat_buf ;
 int stderr ;
 int xlogFilePath ;

__attribute__((used)) static void
CustomizableInitialize(void)
{
 snprintf(WALFilePath, MAXPGPATH, "%s/%s", archiveLocation, nextWALFileName);
 switch (restoreCommandType)
 {
  case 128:




  case 129:
  default:
   SET_RESTORE_COMMAND("cp", WALFilePath, xlogFilePath);
   break;
 }







 if (stat(archiveLocation, &stat_buf) != 0)
 {
  fprintf(stderr, "%s: archive location \"%s\" does not exist\n", progname, archiveLocation);
  fflush(stderr);
  exit(2);
 }
}
