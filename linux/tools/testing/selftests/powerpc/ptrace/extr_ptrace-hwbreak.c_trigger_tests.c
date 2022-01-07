
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTRACE_TRACEME ;
 int SIGUSR1 ;
 int getpid () ;
 int kill (int ,int ) ;
 int perror (char*) ;
 int ptrace (int ,int ,int *,int ) ;
 int read_var (int) ;
 int write_var (int) ;

__attribute__((used)) static void trigger_tests(void)
{
 int len, ret;

 ret = ptrace(PTRACE_TRACEME, 0, ((void*)0), 0);
 if (ret) {
  perror("Can't be traced?\n");
  return;
 }


 kill(getpid(), SIGUSR1);


 for (len = 1; len <= sizeof(long); len <<= 1)
  write_var(len);


 for (len = 1; len <= sizeof(long); len <<= 1)
  read_var(len);




 for (len = 1; len <= sizeof(long); len <<= 1)
  write_var(len);


 for (len = 1; len <= sizeof(long); len <<= 1)
  read_var(len);
}
