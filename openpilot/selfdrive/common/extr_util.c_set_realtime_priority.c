
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;
typedef int sa ;


 int SCHED_FIFO ;
 int SYS_gettid ;
 int memset (struct sched_param*,int ,int) ;
 int sched_setscheduler (long,int ,struct sched_param*) ;
 long syscall (int ) ;

int set_realtime_priority(int level) {


  long tid = syscall(SYS_gettid);


  struct sched_param sa;
  memset(&sa, 0, sizeof(sa));
  sa.sched_priority = level;
  return sched_setscheduler(tid, SCHED_FIFO, &sa);

}
