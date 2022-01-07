
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL ;
 scalar_t__ IsUnderPostmaster ;
 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 scalar_t__* OutputFileName ;
 int close (int) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,scalar_t__*) ;
 int freopen (scalar_t__*,char*,int ) ;
 int isatty (int) ;
 int open (scalar_t__*,int,int) ;
 int stderr ;
 int stdout ;

void
DebugFileOpen(void)
{
 int fd,
    istty;

 if (OutputFileName[0])
 {





  if ((fd = open(OutputFileName, O_CREAT | O_APPEND | O_WRONLY,
        0666)) < 0)
   ereport(FATAL,
     (errcode_for_file_access(),
      errmsg("could not open file \"%s\": %m", OutputFileName)));
  istty = isatty(fd);
  close(fd);




  if (!freopen(OutputFileName, "a", stderr))
   ereport(FATAL,
     (errcode_for_file_access(),
      errmsg("could not reopen file \"%s\" as stderr: %m",
       OutputFileName)));







  if (istty && IsUnderPostmaster)
   if (!freopen(OutputFileName, "a", stdout))
    ereport(FATAL,
      (errcode_for_file_access(),
       errmsg("could not reopen file \"%s\" as stdout: %m",
        OutputFileName)));
 }
}
