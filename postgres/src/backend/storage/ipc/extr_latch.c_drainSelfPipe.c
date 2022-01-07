
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int ERROR ;
 scalar_t__ EWOULDBLOCK ;
 int elog (int ,char*) ;
 scalar_t__ errno ;
 int read (int ,char*,int) ;
 int selfpipe_readfd ;
 int waiting ;

__attribute__((used)) static void
drainSelfPipe(void)
{




 char buf[16];
 int rc;

 for (;;)
 {
  rc = read(selfpipe_readfd, buf, sizeof(buf));
  if (rc < 0)
  {
   if (errno == EAGAIN || errno == EWOULDBLOCK)
    break;
   else if (errno == EINTR)
    continue;
   else
   {
    waiting = 0;
    elog(ERROR, "read() on self-pipe failed: %m");
   }
  }
  else if (rc == 0)
  {
   waiting = 0;
   elog(ERROR, "unexpected EOF on self-pipe");
  }
  else if (rc < sizeof(buf))
  {

   break;
  }

 }
}
