
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int clockid_t ;


 int SYS_clock_gettime ;
 int syscall (int ,int ,struct timespec*) ;

__attribute__((used)) static inline int sys_clock_gettime(clockid_t id, struct timespec *ts)
{
 return syscall(SYS_clock_gettime, id, ts);
}
