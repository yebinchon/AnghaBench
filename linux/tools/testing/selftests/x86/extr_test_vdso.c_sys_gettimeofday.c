
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {int dummy; } ;
struct timeval {int dummy; } ;


 int __NR_gettimeofday ;
 int syscall (int ,struct timeval*,struct timezone*) ;

__attribute__((used)) static inline int sys_gettimeofday(struct timeval *tv, struct timezone *tz)
{
 return syscall(__NR_gettimeofday, tv, tz);
}
