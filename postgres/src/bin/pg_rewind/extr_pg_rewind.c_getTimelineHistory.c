
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32 ;
typedef int TimeLineID ;
struct TYPE_10__ {int tli; int begin; int end; } ;
typedef TYPE_2__ TimeLineHistoryEntry ;
struct TYPE_9__ {int ThisTimeLineID; } ;
struct TYPE_11__ {TYPE_1__ checkPointCopy; } ;
typedef TYPE_3__ ControlFileData ;


 int Assert (int) ;
 TYPE_3__ ControlFile_source ;
 TYPE_3__ ControlFile_target ;
 int InvalidXLogRecPtr ;
 int MAXPGPATH ;
 int TLHistoryFilePath (char*,int) ;
 int datadir_target ;
 scalar_t__ debug ;
 char* fetchFile (char*,int *) ;
 int pg_fatal (char*) ;
 int pg_free (char*) ;
 int pg_log_debug (char*,...) ;
 scalar_t__ pg_malloc (int) ;
 TYPE_2__* rewind_parseTimeLineHistory (char*,int,int*) ;
 char* slurpFile (int ,char*,int *) ;
 int targetNentries ;

__attribute__((used)) static TimeLineHistoryEntry *
getTimelineHistory(ControlFileData *controlFile, int *nentries)
{
 TimeLineHistoryEntry *history;
 TimeLineID tli;

 tli = controlFile->checkPointCopy.ThisTimeLineID;





 if (tli == 1)
 {
  history = (TimeLineHistoryEntry *) pg_malloc(sizeof(TimeLineHistoryEntry));
  history->tli = tli;
  history->begin = history->end = InvalidXLogRecPtr;
  *nentries = 1;
 }
 else
 {
  char path[MAXPGPATH];
  char *histfile;

  TLHistoryFilePath(path, tli);


  if (controlFile == &ControlFile_source)
   histfile = fetchFile(path, ((void*)0));
  else if (controlFile == &ControlFile_target)
   histfile = slurpFile(datadir_target, path, ((void*)0));
  else
   pg_fatal("invalid control file");

  history = rewind_parseTimeLineHistory(histfile, tli, nentries);
  pg_free(histfile);
 }

 if (debug)
 {
  int i;

  if (controlFile == &ControlFile_source)
   pg_log_debug("Source timeline history:");
  else if (controlFile == &ControlFile_target)
   pg_log_debug("Target timeline history:");
  else
   Assert(0);




  for (i = 0; i < targetNentries; i++)
  {
   TimeLineHistoryEntry *entry;

   entry = &history[i];
   pg_log_debug("%d: %X/%X - %X/%X", entry->tli,
       (uint32) (entry->begin >> 32), (uint32) (entry->begin),
       (uint32) (entry->end >> 32), (uint32) (entry->end));
  }
 }

 return history;
}
