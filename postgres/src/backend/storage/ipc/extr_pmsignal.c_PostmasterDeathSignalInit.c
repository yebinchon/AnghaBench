
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR ;
 int POSTMASTER_DEATH_SIGNAL ;
 int PROC_PDEATHSIG_CTL ;
 int PR_SET_PDEATHSIG ;
 int P_PID ;
 int elog (int ,char*) ;
 int postmaster_death_handler ;
 int postmaster_possibly_dead ;
 int pqsignal (int,int ) ;
 scalar_t__ prctl (int ,int) ;
 scalar_t__ procctl (int ,int ,int ,int*) ;

void
PostmasterDeathSignalInit(void)
{
}
