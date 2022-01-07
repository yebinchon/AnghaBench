
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_cur; } ;


 scalar_t__ EMFILE ;
 scalar_t__ ENFILE ;
 int RLIMIT_NOFILE ;
 int RLIMIT_OFILE ;
 int WARNING ;
 int close (int) ;
 int dup (int ) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 scalar_t__ errno ;
 int getrlimit (int ,struct rlimit*) ;
 scalar_t__ palloc (int) ;
 int pfree (int*) ;
 scalar_t__ repalloc (int*,int) ;

__attribute__((used)) static void
count_usable_fds(int max_to_probe, int *usable_fds, int *already_open)
{
 int *fd;
 int size;
 int used = 0;
 int highestfd = 0;
 int j;






 size = 1024;
 fd = (int *) palloc(size * sizeof(int));
 for (;;)
 {
  int thisfd;
  thisfd = dup(0);
  if (thisfd < 0)
  {

   if (errno != EMFILE && errno != ENFILE)
    elog(WARNING, "dup(0) failed after %d successes: %m", used);
   break;
  }

  if (used >= size)
  {
   size *= 2;
   fd = (int *) repalloc(fd, size * sizeof(int));
  }
  fd[used++] = thisfd;

  if (highestfd < thisfd)
   highestfd = thisfd;

  if (used >= max_to_probe)
   break;
 }


 for (j = 0; j < used; j++)
  close(fd[j]);

 pfree(fd);






 *usable_fds = used;
 *already_open = highestfd + 1 - used;
}
