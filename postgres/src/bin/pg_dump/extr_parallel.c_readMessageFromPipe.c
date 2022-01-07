
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int pg_free (char*) ;
 scalar_t__ pg_malloc (int) ;
 scalar_t__ pg_realloc (char*,int) ;
 int piperead (int,char*,int) ;

__attribute__((used)) static char *
readMessageFromPipe(int fd)
{
 char *msg;
 int msgsize,
    bufsize;
 int ret;
 bufsize = 64;
 msg = (char *) pg_malloc(bufsize);
 msgsize = 0;
 for (;;)
 {
  Assert(msgsize < bufsize);
  ret = piperead(fd, msg + msgsize, 1);
  if (ret <= 0)
   break;

  Assert(ret == 1);

  if (msg[msgsize] == '\0')
   return msg;

  msgsize++;
  if (msgsize == bufsize)
  {
   bufsize += 16;
   msg = (char *) pg_realloc(msg, bufsize);
  }
 }


 pg_free(msg);
 return ((void*)0);
}
