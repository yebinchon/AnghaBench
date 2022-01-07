
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TM_CAUSE_SYSCALL ;
 int failure_code () ;

__attribute__((used)) static inline bool failure_is_syscall(void)
{
 return (failure_code() & TM_CAUSE_SYSCALL) == TM_CAUSE_SYSCALL;
}
