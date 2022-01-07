
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
typedef scalar_t__ uint32 ;
typedef int fline ;
typedef void* XLogRecPtr ;
typedef int TimeLineID ;
struct TYPE_4__ {int tli; int begin; int end; } ;
typedef TYPE_1__ TimeLineHistoryEntry ;
typedef int List ;
typedef int FILE ;


 int * AllocateFile (char*,char*) ;
 scalar_t__ ArchiveRecoveryRequested ;
 scalar_t__ ENOENT ;
 int FATAL ;
 int FreeFile (int *) ;
 void* InvalidXLogRecPtr ;
 int KeepFileRestoredFromArchive (char*,char*) ;
 int MAXFNAMELEN ;
 int MAXPGPATH ;
 int * NIL ;
 int RestoreArchivedFile (char*,char*,char*,int ,int) ;
 int TLHistoryFileName (char*,int) ;
 int TLHistoryFilePath (char*,int) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errhint (char*) ;
 int errmsg (char*,char*) ;
 scalar_t__ errno ;
 int * fgets (char*,int,int *) ;
 int isspace (unsigned char) ;
 int * lcons (TYPE_1__*,int *) ;
 int * list_make1 (TYPE_1__*) ;
 scalar_t__ palloc (int) ;
 int sscanf (char*,char*,int*,scalar_t__*,scalar_t__*) ;

List *
readTimeLineHistory(TimeLineID targetTLI)
{
 List *result;
 char path[MAXPGPATH];
 char histfname[MAXFNAMELEN];
 char fline[MAXPGPATH];
 FILE *fd;
 TimeLineHistoryEntry *entry;
 TimeLineID lasttli = 0;
 XLogRecPtr prevend;
 bool fromArchive = 0;


 if (targetTLI == 1)
 {
  entry = (TimeLineHistoryEntry *) palloc(sizeof(TimeLineHistoryEntry));
  entry->tli = targetTLI;
  entry->begin = entry->end = InvalidXLogRecPtr;
  return list_make1(entry);
 }

 if (ArchiveRecoveryRequested)
 {
  TLHistoryFileName(histfname, targetTLI);
  fromArchive =
   RestoreArchivedFile(path, histfname, "RECOVERYHISTORY", 0, 0);
 }
 else
  TLHistoryFilePath(path, targetTLI);

 fd = AllocateFile(path, "r");
 if (fd == ((void*)0))
 {
  if (errno != ENOENT)
   ereport(FATAL,
     (errcode_for_file_access(),
      errmsg("could not open file \"%s\": %m", path)));

  entry = (TimeLineHistoryEntry *) palloc(sizeof(TimeLineHistoryEntry));
  entry->tli = targetTLI;
  entry->begin = entry->end = InvalidXLogRecPtr;
  return list_make1(entry);
 }

 result = NIL;




 prevend = InvalidXLogRecPtr;
 while (fgets(fline, sizeof(fline), fd) != ((void*)0))
 {

  char *ptr;
  TimeLineID tli;
  uint32 switchpoint_hi;
  uint32 switchpoint_lo;
  int nfields;

  for (ptr = fline; *ptr; ptr++)
  {
   if (!isspace((unsigned char) *ptr))
    break;
  }
  if (*ptr == '\0' || *ptr == '#')
   continue;

  nfields = sscanf(fline, "%u\t%X/%X", &tli, &switchpoint_hi, &switchpoint_lo);

  if (nfields < 1)
  {

   ereport(FATAL,
     (errmsg("syntax error in history file: %s", fline),
      errhint("Expected a numeric timeline ID.")));
  }
  if (nfields != 3)
   ereport(FATAL,
     (errmsg("syntax error in history file: %s", fline),
      errhint("Expected a write-ahead log switchpoint location.")));

  if (result && tli <= lasttli)
   ereport(FATAL,
     (errmsg("invalid data in history file: %s", fline),
      errhint("Timeline IDs must be in increasing sequence.")));

  lasttli = tli;

  entry = (TimeLineHistoryEntry *) palloc(sizeof(TimeLineHistoryEntry));
  entry->tli = tli;
  entry->begin = prevend;
  entry->end = ((uint64) (switchpoint_hi)) << 32 | (uint64) switchpoint_lo;
  prevend = entry->end;


  result = lcons(entry, result);


 }

 FreeFile(fd);

 if (result && targetTLI <= lasttli)
  ereport(FATAL,
    (errmsg("invalid data in history file \"%s\"", path),
     errhint("Timeline IDs must be less than child timeline's ID.")));





 entry = (TimeLineHistoryEntry *) palloc(sizeof(TimeLineHistoryEntry));
 entry->tli = targetTLI;
 entry->begin = prevend;
 entry->end = InvalidXLogRecPtr;

 result = lcons(entry, result);





 if (fromArchive)
  KeepFileRestoredFromArchive(path, histfname);

 return result;
}
