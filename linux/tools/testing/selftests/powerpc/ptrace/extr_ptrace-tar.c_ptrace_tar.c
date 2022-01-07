
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int IPC_CREAT ;
 int IPC_PRIVATE ;
 int IPC_RMID ;
 int TEST_FAIL ;
 int TEST_PASS ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int fork () ;
 int perror (char*) ;
 int* pptr ;
 int printf (char*) ;
 int shm_id ;
 scalar_t__ shmat (int ,int *,int ) ;
 int shmctl (int ,int ,int *) ;
 int shmdt (int*) ;
 int shmget (int ,int,int) ;
 int tar () ;
 int trace_tar (int) ;
 int trace_tar_write (int) ;
 int wait (int*) ;

int ptrace_tar(void)
{
 pid_t pid;
 int ret, status;

 shm_id = shmget(IPC_PRIVATE, sizeof(int) * 3, 0777|IPC_CREAT);
 pid = fork();
 if (pid < 0) {
  perror("fork() failed");
  return TEST_FAIL;
 }

 if (pid == 0)
  tar();

 if (pid) {
  pptr = (int *)shmat(shm_id, ((void*)0), 0);
  pptr[0] = 0;
  pptr[1] = 0;

  while (!pptr[2])
   asm volatile("" : : : "memory");
  ret = trace_tar(pid);
  if (ret)
   return ret;

  ret = trace_tar_write(pid);
  if (ret)
   return ret;


  pptr[0] = 1;


  while (!pptr[1])
   asm volatile("" : : : "memory");

  shmdt((int *)pptr);

  ret = wait(&status);
  shmctl(shm_id, IPC_RMID, ((void*)0));
  if (ret != pid) {
   printf("Child's exit status not captured\n");
   return TEST_PASS;
  }

  return (WIFEXITED(status) && WEXITSTATUS(status)) ? TEST_FAIL :
   TEST_PASS;
 }
 return TEST_PASS;
}
