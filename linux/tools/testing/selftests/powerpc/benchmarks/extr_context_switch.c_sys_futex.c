
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int SYS_futex ;
 long syscall (int ,void*,int,int,struct timespec*,void*,int) ;

__attribute__((used)) static long sys_futex(void *addr1, int op, int val1, struct timespec *timeout,
        void *addr2, int val3)
{
 return syscall(SYS_futex, addr1, op, val1, timeout, addr2, val3);
}
