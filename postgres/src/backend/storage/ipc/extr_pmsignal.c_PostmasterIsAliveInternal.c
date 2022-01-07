
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EWOULDBLOCK ;
 int FATAL ;
 size_t POSTMASTER_FD_WATCH ;
 int PostmasterHandle ;
 scalar_t__ WAIT_TIMEOUT ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 int elog (int ,char*) ;
 scalar_t__ errno ;
 int * postmaster_alive_fds ;
 int postmaster_possibly_dead ;
 scalar_t__ read (int ,char*,int) ;

bool
PostmasterIsAliveInternal(void)
{
 {
  char c;
  ssize_t rc;

  rc = read(postmaster_alive_fds[POSTMASTER_FD_WATCH], &c, 1);





  if (rc < 0 && (errno == EAGAIN || errno == EWOULDBLOCK))
   return 1;
  else
  {
   if (rc < 0)
    elog(FATAL, "read on postmaster death monitoring pipe failed: %m");
   else if (rc > 0)
    elog(FATAL, "unexpected data in postmaster death monitoring pipe");

   return 0;
  }
 }
}
