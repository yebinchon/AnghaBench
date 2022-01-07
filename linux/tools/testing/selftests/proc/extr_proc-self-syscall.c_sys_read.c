
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int SYS_read ;
 int syscall (int ,int,void*,size_t) ;

__attribute__((used)) static inline ssize_t sys_read(int fd, void *buf, size_t len)
{
 return syscall(SYS_read, fd, buf, len);
}
