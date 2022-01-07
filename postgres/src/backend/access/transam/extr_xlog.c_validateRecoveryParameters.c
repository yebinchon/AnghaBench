
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimeLineID ;


 int ArchiveRecoveryRequested ;
 int Assert (int) ;
 int CStringGetDatum (int ) ;
 int DatumGetTimestampTz (int ) ;
 int DirectFunctionCall3 (int ,int ,int ,int ) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int EnableHotStandby ;
 int FATAL ;
 int Int32GetDatum (int) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int * PrimaryConnInfo ;
 scalar_t__ RECOVERY_TARGET_ACTION_PAUSE ;
 scalar_t__ RECOVERY_TARGET_ACTION_SHUTDOWN ;
 scalar_t__ RECOVERY_TARGET_TIME ;
 scalar_t__ RECOVERY_TARGET_TIMELINE_CONTROLFILE ;
 scalar_t__ RECOVERY_TARGET_TIMELINE_LATEST ;
 scalar_t__ RECOVERY_TARGET_TIMELINE_NUMERIC ;
 scalar_t__ StandbyModeRequested ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 int existsTimeLineHistory (int) ;
 int findNewestTimeLine (int) ;
 int * recoveryRestoreCommand ;
 scalar_t__ recoveryTarget ;
 scalar_t__ recoveryTargetAction ;
 int recoveryTargetTLI ;
 int recoveryTargetTLIRequested ;
 int recoveryTargetTime ;
 scalar_t__ recoveryTargetTimeLineGoal ;
 int recovery_target_time_string ;
 scalar_t__ strcmp (int *,char*) ;
 int timestamptz_in ;

__attribute__((used)) static void
validateRecoveryParameters(void)
{
 if (!ArchiveRecoveryRequested)
  return;




 if (StandbyModeRequested)
 {
  if ((PrimaryConnInfo == ((void*)0) || strcmp(PrimaryConnInfo, "") == 0) &&
   (recoveryRestoreCommand == ((void*)0) || strcmp(recoveryRestoreCommand, "") == 0))
   ereport(WARNING,
     (errmsg("specified neither primary_conninfo nor restore_command"),
      errhint("The database server will regularly poll the pg_wal subdirectory to check for files placed there.")));
 }
 else
 {
  if (recoveryRestoreCommand == ((void*)0) ||
   strcmp(recoveryRestoreCommand, "") == 0)
   ereport(FATAL,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("must specify restore_command when standby mode is not enabled")));
 }






 if (recoveryTargetAction == RECOVERY_TARGET_ACTION_PAUSE &&
  !EnableHotStandby)
  recoveryTargetAction = RECOVERY_TARGET_ACTION_SHUTDOWN;





 if (recoveryTarget == RECOVERY_TARGET_TIME)
 {
  recoveryTargetTime = DatumGetTimestampTz(DirectFunctionCall3(timestamptz_in,
                  CStringGetDatum(recovery_target_time_string),
                  ObjectIdGetDatum(InvalidOid),
                  Int32GetDatum(-1)));
 }







 if (recoveryTargetTimeLineGoal == RECOVERY_TARGET_TIMELINE_NUMERIC)
 {
  TimeLineID rtli = recoveryTargetTLIRequested;


  if (rtli != 1 && !existsTimeLineHistory(rtli))
   ereport(FATAL,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("recovery target timeline %u does not exist",
       rtli)));
  recoveryTargetTLI = rtli;
 }
 else if (recoveryTargetTimeLineGoal == RECOVERY_TARGET_TIMELINE_LATEST)
 {

  recoveryTargetTLI = findNewestTimeLine(recoveryTargetTLI);
 }
 else
 {




  Assert(recoveryTargetTimeLineGoal == RECOVERY_TARGET_TIMELINE_CONTROLFILE);
 }
}
