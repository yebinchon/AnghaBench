
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union config_var_val {void* stringval; } ;
struct stat {int dummy; } ;
struct config_generic {scalar_t__ context; int flags; scalar_t__ vartype; } ;
struct TYPE_5__ {char* name; int kind; } ;
struct TYPE_4__ {TYPE_2__* setstmt; } ;
typedef int FILE ;
typedef int ConfigVariable ;
typedef int AutoConfTmpFileName ;
typedef int AutoConfFileName ;
typedef TYPE_1__ AlterSystemStmt ;


 int * AllocateFile (char*,char*) ;
 int AutoFileLock ;
 int BasicOpenFile (char*,int) ;
 int ERRCODE_CANT_CHANGE_RUNTIME_PARAM ;
 int ERRCODE_CONFIG_FILE_ERROR ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 char* ExtractSetVariableArgs (TYPE_2__*) ;
 int FreeConfigVariables (int *) ;
 int FreeFile (int *) ;
 int GUC_DISALLOW_IN_AUTO_FILE ;
 int GUC_DISALLOW_IN_FILE ;
 int LOG ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MAXPGPATH ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 scalar_t__ PGC_INTERNAL ;
 scalar_t__ PGC_STRING ;
 int PGC_S_FILE ;
 char* PG_AUTOCONF_FILENAME ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int ParseConfigFp (int *,char*,int ,int ,int **,int **) ;




 int close (int volatile) ;
 int durable_rename (char*,char*,int ) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,...) ;
 struct config_generic* find_option (char*,int,int ) ;
 int free (void*) ;
 int parse_and_validate_value (struct config_generic*,char*,char*,int ,int ,union config_var_val*,void**) ;
 int replace_auto_config_value (int **,int **,char*,char*) ;
 int snprintf (char*,int,char*,char*,...) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strchr (char*,char) ;
 int superuser () ;
 int unlink (char*) ;
 int write_auto_conf_file (int volatile,char*,int *) ;

void
AlterSystemSetConfigFile(AlterSystemStmt *altersysstmt)
{
 char *name;
 char *value;
 bool resetall = 0;
 ConfigVariable *head = ((void*)0);
 ConfigVariable *tail = ((void*)0);
 volatile int Tmpfd;
 char AutoConfFileName[MAXPGPATH];
 char AutoConfTmpFileName[MAXPGPATH];

 if (!superuser())
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     (errmsg("must be superuser to execute ALTER SYSTEM command"))));




 name = altersysstmt->setstmt->name;

 switch (altersysstmt->setstmt->kind)
 {
  case 128:
   value = ExtractSetVariableArgs(altersysstmt->setstmt);
   break;

  case 129:
  case 131:
   value = ((void*)0);
   break;

  case 130:
   value = ((void*)0);
   resetall = 1;
   break;

  default:
   elog(ERROR, "unrecognized alter system stmt type: %d",
     altersysstmt->setstmt->kind);
   break;
 }




 if (!resetall)
 {
  struct config_generic *record;

  record = find_option(name, 0, ERROR);
  if (record == ((void*)0))
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("unrecognized configuration parameter \"%s\"",
       name)));





  if ((record->context == PGC_INTERNAL) ||
   (record->flags & GUC_DISALLOW_IN_FILE) ||
   (record->flags & GUC_DISALLOW_IN_AUTO_FILE))
   ereport(ERROR,
     (errcode(ERRCODE_CANT_CHANGE_RUNTIME_PARAM),
      errmsg("parameter \"%s\" cannot be changed",
       name)));




  if (value)
  {
   union config_var_val newval;
   void *newextra = ((void*)0);


   if (!parse_and_validate_value(record, name, value,
            PGC_S_FILE, ERROR,
            &newval, &newextra))
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
       errmsg("invalid value for parameter \"%s\": \"%s\"",
        name, value)));

   if (record->vartype == PGC_STRING && newval.stringval != ((void*)0))
    free(newval.stringval);
   if (newextra)
    free(newextra);






   if (strchr(value, '\n'))
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
       errmsg("parameter value for ALTER SYSTEM must not contain a newline")));
  }
 }





 snprintf(AutoConfFileName, sizeof(AutoConfFileName), "%s",
    PG_AUTOCONF_FILENAME);
 snprintf(AutoConfTmpFileName, sizeof(AutoConfTmpFileName), "%s.%s",
    AutoConfFileName,
    "tmp");






 LWLockAcquire(AutoFileLock, LW_EXCLUSIVE);





 if (!resetall)
 {
  struct stat st;

  if (stat(AutoConfFileName, &st) == 0)
  {

   FILE *infile;

   infile = AllocateFile(AutoConfFileName, "r");
   if (infile == ((void*)0))
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not open file \"%s\": %m",
        AutoConfFileName)));


   if (!ParseConfigFp(infile, AutoConfFileName, 0, LOG, &head, &tail))
    ereport(ERROR,
      (errcode(ERRCODE_CONFIG_FILE_ERROR),
       errmsg("could not parse contents of file \"%s\"",
        AutoConfFileName)));

   FreeFile(infile);
  }





  replace_auto_config_value(&head, &tail, name, value);
 }
 Tmpfd = BasicOpenFile(AutoConfTmpFileName,
        O_CREAT | O_RDWR | O_TRUNC);
 if (Tmpfd < 0)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not open file \"%s\": %m",
      AutoConfTmpFileName)));





 PG_TRY();
 {

  write_auto_conf_file(Tmpfd, AutoConfTmpFileName, head);


  close(Tmpfd);
  Tmpfd = -1;






  durable_rename(AutoConfTmpFileName, AutoConfFileName, ERROR);
 }
 PG_CATCH();
 {

  if (Tmpfd >= 0)
   close(Tmpfd);


  (void) unlink(AutoConfTmpFileName);

  PG_RE_THROW();
 }
 PG_END_TRY();

 FreeConfigVariables(head);

 LWLockRelease(AutoFileLock);
}
