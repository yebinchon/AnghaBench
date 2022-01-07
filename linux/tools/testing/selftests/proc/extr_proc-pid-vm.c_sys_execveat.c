
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_execveat ;
 long syscall (int ,int,char const*,char**,char**,int) ;

__attribute__((used)) static inline long sys_execveat(int dirfd, const char *pathname, char **argv, char **envp, int flags)
{
 return syscall(SYS_execveat, dirfd, pathname, argv, envp, flags);
}
