
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VMENTRY_CYCLES ;
 int do_exit ;
 int wait_cycles (int ) ;

__attribute__((used)) static inline void vmentry(void)
{
 if (!do_exit)
  return;

 wait_cycles(VMENTRY_CYCLES);
}
