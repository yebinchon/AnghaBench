
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shared {int dummy; } ;
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
 int have_htm () ;
 int kill (int,int ) ;
 int perror (char*) ;
 struct shared* pptr ;
 int* pptr1 ;
 int printf (char*) ;
 int shm_id ;
 int shm_id1 ;
 scalar_t__ shmat (int ,int *,int ) ;
 int shmctl (int ,int ,int *) ;
 int shmdt (void*) ;
 int shmget (int ,int,int) ;
 int tm_spr () ;
 int trace_tm_spr (int) ;
 int wait (int*) ;

int ptrace_tm_spr(void)
{
 pid_t pid;
 int ret, status;

 SKIP_IF(!have_htm());
 shm_id = shmget(IPC_PRIVATE, sizeof(struct shared), 0777|IPC_CREAT);
 shm_id1 = shmget(IPC_PRIVATE, sizeof(int), 0777|IPC_CREAT);
 pid = fork();
 if (pid < 0) {
  perror("fork() failed");
  return TEST_FAIL;
 }

 if (pid == 0)
  tm_spr();

 if (pid) {
  pptr = (struct shared *)shmat(shm_id, ((void*)0), 0);
  pptr1 = (int *)shmat(shm_id1, ((void*)0), 0);

  while (!pptr1[0])
   asm volatile("" : : : "memory");
  ret = trace_tm_spr(pid);
  if (ret) {
   kill(pid, SIGKILL);
   shmdt((void *)pptr);
   shmdt((void *)pptr1);
   shmctl(shm_id, IPC_RMID, ((void*)0));
   shmctl(shm_id1, IPC_RMID, ((void*)0));
   return TEST_FAIL;
  }

  shmdt((void *)pptr);
  shmdt((void *)pptr1);
  ret = wait(&status);
  shmctl(shm_id, IPC_RMID, ((void*)0));
  shmctl(shm_id1, IPC_RMID, ((void*)0));
  if (ret != pid) {
   printf("Child's exit status not captured\n");
   return TEST_FAIL;
  }

  return (WIFEXITED(status) && WEXITSTATUS(status)) ? TEST_FAIL :
   TEST_PASS;
 }
 return TEST_PASS;
}
