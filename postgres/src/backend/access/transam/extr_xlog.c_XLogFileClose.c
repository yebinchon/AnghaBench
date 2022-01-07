
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int PANIC ;
 int POSIX_FADV_DONTNEED ;
 int ThisTimeLineID ;
 int XLogFileNameP (int ,int ) ;
 int XLogIsNeeded () ;
 scalar_t__ close (int) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ) ;
 int openLogFile ;
 int openLogSegNo ;
 int posix_fadvise (int,int ,int ,int ) ;

__attribute__((used)) static void
XLogFileClose(void)
{
 Assert(openLogFile >= 0);
 if (close(openLogFile) != 0)
  ereport(PANIC,
    (errcode_for_file_access(),
     errmsg("could not close file \"%s\": %m",
      XLogFileNameP(ThisTimeLineID, openLogSegNo))));
 openLogFile = -1;
}
