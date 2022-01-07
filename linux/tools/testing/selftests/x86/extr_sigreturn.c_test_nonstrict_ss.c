
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGILL ;
 int SIGSEGV ;
 int SIGTRAP ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int clearhandler (int ) ;
 int nerrs ;
 int printf (char*) ;
 int raise (int ) ;
 int sethandler (int ,int ,int ) ;
 int sigusr2 ;

__attribute__((used)) static int test_nonstrict_ss(void)
{
 clearhandler(SIGUSR1);
 clearhandler(SIGTRAP);
 clearhandler(SIGSEGV);
 clearhandler(SIGILL);
 sethandler(SIGUSR2, sigusr2, 0);

 nerrs = 0;

 printf("[RUN]\tClear UC_STRICT_RESTORE_SS and corrupt SS\n");
 raise(SIGUSR2);
 if (!nerrs)
  printf("[OK]\tIt worked\n");

 return nerrs;
}
