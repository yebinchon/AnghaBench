
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int SYS_time ;
 long syscall (int ,int *) ;

__attribute__((used)) static inline long sys_time(time_t *t)
{
 return syscall(SYS_time, t);
}
