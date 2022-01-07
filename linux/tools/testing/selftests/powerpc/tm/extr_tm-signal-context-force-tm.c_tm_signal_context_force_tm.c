
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int SKIP_IF (int) ;
 int first_time ;
 int getcontext (int *) ;
 int have_htm () ;
 int is_ppc64le () ;
 int main_context ;
 int tm_trap_test () ;

int tm_signal_context_force_tm(void)
{
 SKIP_IF(!have_htm());





 SKIP_IF(!is_ppc64le());


 getcontext(&main_context);

 if (!first_time++)
  tm_trap_test();

 return EXIT_SUCCESS;
}
