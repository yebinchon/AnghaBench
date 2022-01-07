
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 scalar_t__ errno ;
 int selfpipe_writefd ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
sendSelfPipeByte(void)
{
 int rc;
 char dummy = 0;

retry:
 rc = write(selfpipe_writefd, &dummy, 1);
 if (rc < 0)
 {

  if (errno == EINTR)
   goto retry;





  if (errno == EAGAIN || errno == EWOULDBLOCK)
   return;






  return;
 }
}
