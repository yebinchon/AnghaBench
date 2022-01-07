
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int FAIL_IF (int) ;
 int NR_CHILDREN ;
 int SIGINT ;
 int SKIP_IF (int) ;
 int bind_to_cpu (int) ;
 int cycles_child () ;
 int ebb_is_supported () ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int kill (scalar_t__,int ) ;
 int pick_online_cpu () ;
 int sleep (int) ;
 int wait_for_child (scalar_t__) ;

int multi_ebb_procs(void)
{
 pid_t pids[NR_CHILDREN];
 int cpu, rc, i;

 SKIP_IF(!ebb_is_supported());

 cpu = pick_online_cpu();
 FAIL_IF(cpu < 0);
 FAIL_IF(bind_to_cpu(cpu));

 for (i = 0; i < NR_CHILDREN; i++) {
  pids[i] = fork();
  if (pids[i] == 0)
   exit(cycles_child());
 }


 sleep(10);

 rc = 0;
 for (i = 0; i < NR_CHILDREN; i++) {

  kill(pids[i], SIGINT);

  rc |= wait_for_child(pids[i]);
 }

 return rc;
}
