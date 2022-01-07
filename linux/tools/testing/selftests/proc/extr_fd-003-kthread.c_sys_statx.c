
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_statx ;
 int syscall (int ,int,char const*,int,unsigned int,void*) ;

__attribute__((used)) static inline int sys_statx(int dirfd, const char *pathname, int flags,
       unsigned int mask, void *stx)
{
 return syscall(SYS_statx, dirfd, pathname, flags, mask, stx);
}
