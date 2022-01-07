
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PIPE_WRITE ;
 int fatal (char*) ;
 int pipewrite (int,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void
sendMessageToMaster(int pipefd[2], const char *str)
{
 int len = strlen(str) + 1;

 if (pipewrite(pipefd[PIPE_WRITE], str, len) != len)
  fatal("could not write to the communication channel: %m");
}
