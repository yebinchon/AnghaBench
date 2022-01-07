
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;
typedef int XLogRecPtr ;
typedef char TimeLineID ;
typedef int FILE ;


 int * AllocateFile (int ,char*) ;
 int BACKUP_LABEL_FILE ;
 int DEBUG1 ;
 scalar_t__ ENOENT ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int FATAL ;
 scalar_t__ FreeFile (int *) ;
 int MAXFNAMELEN ;
 int MAXPGPATH ;
 int RedoStartLSN ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errdetail (char*,char,char) ;
 int errmsg (char*,...) ;
 scalar_t__ errno ;
 scalar_t__ ferror (int *) ;
 int fscanf (int *,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static bool
read_backup_label(XLogRecPtr *checkPointLoc, bool *backupEndRequired,
      bool *backupFromStandby)
{
 char startxlogfilename[MAXFNAMELEN];
 TimeLineID tli_from_walseg,
    tli_from_file;
 FILE *lfp;
 char ch;
 char backuptype[20];
 char backupfrom[20];
 char backuplabel[MAXPGPATH];
 char backuptime[128];
 uint32 hi,
    lo;

 *backupEndRequired = 0;
 *backupFromStandby = 0;




 lfp = AllocateFile(BACKUP_LABEL_FILE, "r");
 if (!lfp)
 {
  if (errno != ENOENT)
   ereport(FATAL,
     (errcode_for_file_access(),
      errmsg("could not read file \"%s\": %m",
       BACKUP_LABEL_FILE)));
  return 0;
 }






 if (fscanf(lfp, "START WAL LOCATION: %X/%X (file %08X%16s)%c",
      &hi, &lo, &tli_from_walseg, startxlogfilename, &ch) != 5 || ch != '\n')
  ereport(FATAL,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("invalid data in file \"%s\"", BACKUP_LABEL_FILE)));
 RedoStartLSN = ((uint64) hi) << 32 | lo;
 if (fscanf(lfp, "CHECKPOINT LOCATION: %X/%X%c",
      &hi, &lo, &ch) != 3 || ch != '\n')
  ereport(FATAL,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("invalid data in file \"%s\"", BACKUP_LABEL_FILE)));
 *checkPointLoc = ((uint64) hi) << 32 | lo;






 if (fscanf(lfp, "BACKUP METHOD: %19s\n", backuptype) == 1)
 {
  if (strcmp(backuptype, "streamed") == 0)
   *backupEndRequired = 1;
 }

 if (fscanf(lfp, "BACKUP FROM: %19s\n", backupfrom) == 1)
 {
  if (strcmp(backupfrom, "standby") == 0)
   *backupFromStandby = 1;
 }
 if (fscanf(lfp, "START TIME: %127[^\n]\n", backuptime) == 1)
  ereport(DEBUG1,
    (errmsg("backup time %s in file \"%s\"",
      backuptime, BACKUP_LABEL_FILE)));

 if (fscanf(lfp, "LABEL: %1023[^\n]\n", backuplabel) == 1)
  ereport(DEBUG1,
    (errmsg("backup label %s in file \"%s\"",
      backuplabel, BACKUP_LABEL_FILE)));





 if (fscanf(lfp, "START TIMELINE: %u\n", &tli_from_file) == 1)
 {
  if (tli_from_walseg != tli_from_file)
   ereport(FATAL,
     (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("invalid data in file \"%s\"", BACKUP_LABEL_FILE),
      errdetail("Timeline ID parsed is %u, but expected %u.",
          tli_from_file, tli_from_walseg)));

  ereport(DEBUG1,
    (errmsg("backup timeline %u in file \"%s\"",
      tli_from_file, BACKUP_LABEL_FILE)));
 }

 if (ferror(lfp) || FreeFile(lfp))
  ereport(FATAL,
    (errcode_for_file_access(),
     errmsg("could not read file \"%s\": %m",
      BACKUP_LABEL_FILE)));

 return 1;
}
