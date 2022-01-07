
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 scalar_t__ RecoveryInProgress () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*,char*) ;
 int errmsg (char*) ;

__attribute__((used)) static void
error_commit_ts_disabled(void)
{
 ereport(ERROR,
   (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
    errmsg("could not get commit timestamp data"),
    RecoveryInProgress() ?
    errhint("Make sure the configuration parameter \"%s\" is set on the master server.",
      "track_commit_timestamp") :
    errhint("Make sure the configuration parameter \"%s\" is set.",
      "track_commit_timestamp")));
}
