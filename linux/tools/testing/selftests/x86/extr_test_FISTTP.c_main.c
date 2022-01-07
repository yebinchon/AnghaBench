
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGFPE ;
 int SIGILL ;
 int SIGSEGV ;
 int printf (char*,...) ;
 int sighandler ;
 int signal (int ,int ) ;
 int test () ;

int main(int argc, char **argv, char **envp)
{
 int err = 0;





 signal(SIGILL, sighandler);
 signal(SIGFPE, sighandler);
 signal(SIGSEGV, sighandler);

 printf("[RUN]\tTesting fisttp instructions\n");
 err |= test();
 if (!err)
  printf("[OK]\tfisttp\n");
 else
  printf("[FAIL]\tfisttp errors: %d\n", err);

 return err;
}
