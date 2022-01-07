
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int IPC_CREAT ;
 int IPC_PRIVATE ;
 int IPC_RMID ;
 int SIGTERM ;
 int SKIP_IF (int) ;
 int TEST_FAIL ;
 int TEST_PASS ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int fork () ;
 int have_htm () ;
 int kill (int,int ) ;
 int perror (char*) ;
 unsigned long* pptr ;
 int printf (char*) ;
 int shm_id ;
 scalar_t__ shmat (int ,int *,int ) ;
 int shmctl (int ,int ,int *) ;
 int shmdt (void*) ;
 int shmget (int ,int,int) ;
 int tm_gpr () ;
 int trace_tm_gpr (int) ;
 int wait (int*) ;

int ptrace_tm_gpr(void)
{
 pid_t pid;
 int ret, status;

 SKIP_IF(!have_htm());
 shm_id = shmget(IPC_PRIVATE, sizeof(int) * 2, 0777|IPC_CREAT);
 pid = fork();
 if (pid < 0) {
  perror("fork() failed");
  return TEST_FAIL;
 }
 if (pid == 0)
  tm_gpr();

 if (pid) {
  pptr = (unsigned long *)shmat(shm_id, ((void*)0), 0);

  while (!pptr[1])
   asm volatile("" : : : "memory");
  ret = trace_tm_gpr(pid);
  if (ret) {
   kill(pid, SIGTERM);
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
