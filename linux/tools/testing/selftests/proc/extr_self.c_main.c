
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int pid_t ;
typedef int buf2 ;
typedef int buf1 ;


 int assert (int) ;
 size_t readlink (char*,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 int streq (char*,char*) ;
 size_t strlen (char*) ;
 int sys_getpid () ;

int main(void)
{
 char buf1[64], buf2[64];
 pid_t pid;
 ssize_t rv;

 pid = sys_getpid();
 snprintf(buf1, sizeof(buf1), "%u", pid);

 rv = readlink("/proc/self", buf2, sizeof(buf2));
 assert(rv == strlen(buf1));
 buf2[rv] = '\0';
 assert(streq(buf1, buf2));

 return 0;
}
