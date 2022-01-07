
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {int dummy; } ;
struct timeval {int dummy; } ;


 int SYS_gettimeofday ;
 long syscall (int ,struct timeval*,struct timezone*) ;

__attribute__((used)) static inline long sys_gtod(struct timeval *tv, struct timezone *tz)
{
 return syscall(SYS_gettimeofday, tv, tz);
}
