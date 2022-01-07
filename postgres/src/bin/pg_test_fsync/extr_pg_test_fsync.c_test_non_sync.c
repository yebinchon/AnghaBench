
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* LABEL_FORMAT ;
 int O_RDWR ;
 int START_TIMER ;
 int STOP_TIMER ;
 scalar_t__ XLOG_BLCKSZ ;
 int XLOG_BLCKSZ_K ;
 char* _ (char*) ;
 int alarm_triggered ;
 int buf ;
 int close (int) ;
 int die (char*) ;
 int fflush (int ) ;
 int filename ;
 int open (int ,int ,int ) ;
 int printf (char*,...) ;
 int stdout ;
 scalar_t__ write (int,int ,scalar_t__) ;

__attribute__((used)) static void
test_non_sync(void)
{
 int tmpfile,
    ops;




 printf(_("\nNon-sync'ed %dkB writes:\n"), XLOG_BLCKSZ_K);
 printf(LABEL_FORMAT, "write");
 fflush(stdout);

 START_TIMER;
 for (ops = 0; alarm_triggered == 0; ops++)
 {
  if ((tmpfile = open(filename, O_RDWR, 0)) == -1)
   die("could not open output file");
  if (write(tmpfile, buf, XLOG_BLCKSZ) != XLOG_BLCKSZ)
   die("write failed");
  close(tmpfile);
 }
 STOP_TIMER;
}
