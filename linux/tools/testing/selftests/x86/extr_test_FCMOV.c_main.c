
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CF ;
 int PF ;
 int SIGFPE ;
 int SIGILL ;
 int SIGSEGV ;
 int ZF ;
 double fcmovb (int ) ;
 double fcmovbe (int ) ;
 double fcmove (int ) ;
 double fcmovnb (int ) ;
 double fcmovnbe (int ) ;
 double fcmovne (int ) ;
 double fcmovnu (int ) ;
 double fcmovu (int ) ;
 int printf (char*,...) ;
 int sighandler ;
 int signal (int ,int ) ;

int main(int argc, char **argv, char **envp)
{
 int err = 0;





 signal(SIGILL, sighandler);
 signal(SIGFPE, sighandler);
 signal(SIGSEGV, sighandler);

 printf("[RUN]\tTesting fcmovCC instructions\n");

 err |= !(fcmovb(0) == 1.0); err |= !(fcmovnb(0) != 1.0);
 err |= !(fcmove(0) == 1.0); err |= !(fcmovne(0) != 1.0);
 err |= !(fcmovbe(0) == 1.0); err |= !(fcmovnbe(0) != 1.0);
 err |= !(fcmovu(0) == 1.0); err |= !(fcmovnu(0) != 1.0);

 err |= !(fcmovb(CF) != 1.0); err |= !(fcmovnb(CF) == 1.0);
 err |= !(fcmove(CF) == 1.0); err |= !(fcmovne(CF) != 1.0);
 err |= !(fcmovbe(CF) != 1.0); err |= !(fcmovnbe(CF) == 1.0);
 err |= !(fcmovu(CF) == 1.0); err |= !(fcmovnu(CF) != 1.0);

 err |= !(fcmovb(ZF) == 1.0); err |= !(fcmovnb(ZF) != 1.0);
 err |= !(fcmove(ZF) != 1.0); err |= !(fcmovne(ZF) == 1.0);
 err |= !(fcmovbe(ZF) != 1.0); err |= !(fcmovnbe(ZF) == 1.0);
 err |= !(fcmovu(ZF) == 1.0); err |= !(fcmovnu(ZF) != 1.0);

 err |= !(fcmovb(PF) == 1.0); err |= !(fcmovnb(PF) != 1.0);
 err |= !(fcmove(PF) == 1.0); err |= !(fcmovne(PF) != 1.0);
 err |= !(fcmovbe(PF) == 1.0); err |= !(fcmovnbe(PF) != 1.0);
 err |= !(fcmovu(PF) != 1.0); err |= !(fcmovnu(PF) == 1.0);

        if (!err)
                printf("[OK]\tfcmovCC\n");
 else
  printf("[FAIL]\tfcmovCC errors: %d\n", err);

 return err;
}
