
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int IPC_CREAT ;
 int IPC_PRIVATE ;
 int IPC_RMID ;
 int SIGKILL ;
 int SKIP_IF (int) ;
 int TEST_FAIL ;
 int TEST_PASS ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int fork () ;
 int* fp_load ;
 int* fp_load_ckpt ;
 int* fp_load_ckpt_new ;
 int* fp_load_new ;
 int have_htm () ;
 int kill (int,int ) ;
 int perror (char*) ;
 int* pptr ;
 int printf (char*) ;
 int rand () ;
 int shm_id ;
 scalar_t__ shmat (int ,int *,int ) ;
 int shmctl (int ,int ,int *) ;
 int shmdt (void*) ;
 int shmget (int ,int,int) ;
 int tm_spd_vsx () ;
 int trace_tm_spd_vsx (int) ;
 int wait (int*) ;

int ptrace_tm_spd_vsx(void)
{
 pid_t pid;
 int ret, status, i;

 SKIP_IF(!have_htm());
 shm_id = shmget(IPC_PRIVATE, sizeof(int) * 3, 0777|IPC_CREAT);

 for (i = 0; i < 128; i++) {
  fp_load[i] = 1 + rand();
  fp_load_new[i] = 1 + 2 * rand();
  fp_load_ckpt[i] = 1 + 3 * rand();
  fp_load_ckpt_new[i] = 1 + 4 * rand();
 }

 pid = fork();
 if (pid < 0) {
  perror("fork() failed");
  return TEST_FAIL;
 }

 if (pid == 0)
  tm_spd_vsx();

 if (pid) {
  pptr = (int *)shmat(shm_id, ((void*)0), 0);
  while (!pptr[2])
   asm volatile("" : : : "memory");

  ret = trace_tm_spd_vsx(pid);
  if (ret) {
   kill(pid, SIGKILL);
   shmdt((void *)pptr);
   shmctl(shm_id, IPC_RMID, ((void*)0));
   return TEST_FAIL;
  }

  shmdt((void *)pptr);
  ret = wait(&status);
  shmctl(shm_id, IPC_RMID, ((void*)0));
  if (ret != pid) {
   printf("Child's exit status not captured\n");
   return TEST_FAIL;
  }

  return (WIFEXITED(status) && WEXITSTATUS(status)) ? TEST_FAIL :
   TEST_PASS;
 }
 return TEST_PASS;
}
