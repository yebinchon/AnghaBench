
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int IPC_CREAT ;
 int IPC_PRIVATE ;
 int IPC_RMID ;
 int SIGTERM ;
 int TEST_FAIL ;
 int TEST_PASS ;
 int VEC_MAX ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int fork () ;
 int* fp_load ;
 int* fp_load_new ;
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
 int trace_vsx (int) ;
 int vsx () ;
 int wait (int*) ;

int ptrace_vsx(void)
{
 pid_t pid;
 int ret, status, i;

 shm_id = shmget(IPC_PRIVATE, sizeof(int) * 2, 0777|IPC_CREAT);

 for (i = 0; i < VEC_MAX; i++)
  fp_load[i] = i + rand();

 for (i = 0; i < VEC_MAX; i++)
  fp_load_new[i] = i + 2 * rand();

 pid = fork();
 if (pid < 0) {
  perror("fork() failed");
  return TEST_FAIL;
 }

 if (pid == 0)
  vsx();

 if (pid) {
  pptr = (int *)shmat(shm_id, ((void*)0), 0);
  while (!pptr[1])
   asm volatile("" : : : "memory");

  ret = trace_vsx(pid);
  if (ret) {
   kill(pid, SIGTERM);
   shmdt((void *)pptr);
   shmctl(shm_id, IPC_RMID, ((void*)0));
   return TEST_FAIL;
  }

  pptr[0] = 1;
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
