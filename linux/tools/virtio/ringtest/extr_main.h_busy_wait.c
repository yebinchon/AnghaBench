
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int barrier () ;
 int cpu_relax () ;
 scalar_t__ do_relax ;

__attribute__((used)) static inline void busy_wait(void)
{
 if (do_relax)
  cpu_relax();
 else

  barrier();
}
