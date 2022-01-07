
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ errno ;
 int fflush (int ) ;
 int pg_log_error (char*,char const*) ;
 int * popen (char const*,char const*) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static FILE *
popen_check(const char *command, const char *mode)
{
 FILE *cmdfd;

 fflush(stdout);
 fflush(stderr);
 errno = 0;
 cmdfd = popen(command, mode);
 if (cmdfd == ((void*)0))
  pg_log_error("could not execute command \"%s\": %m", command);
 return cmdfd;
}
