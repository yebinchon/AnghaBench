
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AssertState (int ) ;
 int DataDir ;
 int FATAL ;
 scalar_t__ chdir (int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ) ;

void
ChangeToDataDir(void)
{
 AssertState(DataDir);

 if (chdir(DataDir) < 0)
  ereport(FATAL,
    (errcode_for_file_access(),
     errmsg("could not change directory to \"%s\": %m",
      DataDir)));
}
