
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* LABEL_FORMAT ;
 char* NA_FORMAT ;
 int OPEN_SYNC_FLAG ;
 int O_RDWR ;
 int PG_O_DIRECT ;
 int SEEK_SET ;
 int START_TIMER ;
 int STOP_TIMER ;
 char const* _ (char*) ;
 int alarm_triggered ;
 int buf ;
 int close (int) ;
 int die (char*) ;
 int fflush (int ) ;
 int filename ;
 int lseek (int,int ,int ) ;
 int open (int ,int,int ) ;
 int printf (char*,char const*) ;
 int stdout ;
 int write (int,int ,int) ;

__attribute__((used)) static void
test_open_sync(const char *msg, int writes_size)
{






 printf(LABEL_FORMAT, msg);
 fflush(stdout);
 printf(NA_FORMAT, _("n/a"));

}
