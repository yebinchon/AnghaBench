
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGUSR2 ;
 int ksft_print_msg (char*) ;
 int raise (int ) ;
 int sc ;
 int setcontext (int *) ;

__attribute__((used)) static void switch_fn(void)
{
 ksft_print_msg("[RUN]\tswitched to user ctx\n");
 raise(SIGUSR2);
 setcontext(&sc);
}
