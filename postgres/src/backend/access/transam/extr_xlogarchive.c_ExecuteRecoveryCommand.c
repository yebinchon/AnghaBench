
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogSegNo ;
typedef int XLogRecPtr ;
typedef int TimeLineID ;


 int Assert (int) ;
 int DEBUG3 ;
 int FATAL ;
 int GetOldestRestartPoint (int *,int *) ;
 int MAXPGPATH ;
 int StrNCpy (char*,char*,int) ;
 int WARNING ;
 int XLByteToSeg (int ,int ,int ) ;
 int XLogFileName (char*,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char const*,char const*,int ) ;
 int errmsg_internal (char*,char const*,char const*) ;
 int strlen (char*) ;
 int system (char*) ;
 scalar_t__ wait_result_is_any_signal (int,int) ;
 int wait_result_to_str (int) ;
 int wal_segment_size ;

void
ExecuteRecoveryCommand(const char *command, const char *commandName, bool failOnSignal)
{
 char xlogRecoveryCmd[MAXPGPATH];
 char lastRestartPointFname[MAXPGPATH];
 char *dp;
 char *endp;
 const char *sp;
 int rc;
 XLogSegNo restartSegNo;
 XLogRecPtr restartRedoPtr;
 TimeLineID restartTli;

 Assert(command && commandName);






 GetOldestRestartPoint(&restartRedoPtr, &restartTli);
 XLByteToSeg(restartRedoPtr, restartSegNo, wal_segment_size);
 XLogFileName(lastRestartPointFname, restartTli, restartSegNo,
     wal_segment_size);




 dp = xlogRecoveryCmd;
 endp = xlogRecoveryCmd + MAXPGPATH - 1;
 *endp = '\0';

 for (sp = command; *sp; sp++)
 {
  if (*sp == '%')
  {
   switch (sp[1])
   {
    case 'r':

     sp++;
     StrNCpy(dp, lastRestartPointFname, endp - dp);
     dp += strlen(dp);
     break;
    case '%':

     sp++;
     if (dp < endp)
      *dp++ = *sp;
     break;
    default:

     if (dp < endp)
      *dp++ = *sp;
     break;
   }
  }
  else
  {
   if (dp < endp)
    *dp++ = *sp;
  }
 }
 *dp = '\0';

 ereport(DEBUG3,
   (errmsg_internal("executing %s \"%s\"", commandName, command)));




 rc = system(xlogRecoveryCmd);
 if (rc != 0)
 {




  ereport((failOnSignal && wait_result_is_any_signal(rc, 1)) ? FATAL : WARNING,




    (errmsg("%s \"%s\": %s", commandName,
      command, wait_result_to_str(rc))));
 }
}
