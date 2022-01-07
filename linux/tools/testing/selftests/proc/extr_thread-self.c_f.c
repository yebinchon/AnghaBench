
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int pid_t ;
typedef int buf2 ;
typedef int buf1 ;


 int assert (int) ;
 int exit (int ) ;
 size_t readlink (char*,char*,int) ;
 int snprintf (char*,int,char*,int,int) ;
 int streq (char*,char*) ;
 size_t strlen (char*) ;
 int sys_getpid () ;
 int sys_gettid () ;

int f(void *arg)
{
 char buf1[64], buf2[64];
 pid_t pid, tid;
 ssize_t rv;

 pid = sys_getpid();
 tid = sys_gettid();
 snprintf(buf1, sizeof(buf1), "%u/task/%u", pid, tid);

 rv = readlink("/proc/thread-self", buf2, sizeof(buf2));
 assert(rv == strlen(buf1));
 buf2[rv] = '\0';
 assert(streq(buf1, buf2));

 if (arg)
  exit(0);
 return 0;
}
