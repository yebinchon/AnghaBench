
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PIPE_READ ;
 char* readMessageFromPipe (int) ;

__attribute__((used)) static char *
getMessageFromMaster(int pipefd[2])
{
 return readMessageFromPipe(pipefd[PIPE_READ]);
}
