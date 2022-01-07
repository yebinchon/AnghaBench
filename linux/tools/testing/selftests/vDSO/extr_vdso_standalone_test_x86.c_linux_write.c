
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __NR_write ;
 long x86_syscall3 (int ,int,long,long) ;

__attribute__((used)) static inline long linux_write(int fd, const void *data, size_t len)
{
 return x86_syscall3(__NR_write, fd, (long)data, (long)len);
}
