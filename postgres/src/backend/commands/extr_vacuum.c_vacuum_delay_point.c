
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AutoVacuumUpdateDelay () ;
 int CHECK_FOR_INTERRUPTS () ;
 int InterruptPending ;
 scalar_t__ VacuumCostActive ;
 int VacuumCostBalance ;
 int VacuumCostDelay ;
 int VacuumCostLimit ;
 int pg_usleep (long) ;

void
vacuum_delay_point(void)
{

 CHECK_FOR_INTERRUPTS();


 if (VacuumCostActive && !InterruptPending &&
  VacuumCostBalance >= VacuumCostLimit)
 {
  double msec;

  msec = VacuumCostDelay * VacuumCostBalance / VacuumCostLimit;
  if (msec > VacuumCostDelay * 4)
   msec = VacuumCostDelay * 4;

  pg_usleep((long) (msec * 1000));

  VacuumCostBalance = 0;


  AutoVacuumUpdateDelay();


  CHECK_FOR_INTERRUPTS();
 }
}
