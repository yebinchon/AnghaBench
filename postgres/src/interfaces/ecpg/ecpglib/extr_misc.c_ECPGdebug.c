
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int debug_init_mutex ;
 int * debugstream ;
 int ecpg_internal_regression_mode ;
 int ecpg_log (char*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int simple_debug ;

void
ECPGdebug(int n, FILE *dbgs)
{




 if (n > 100)
 {
  ecpg_internal_regression_mode = 1;
  simple_debug = n - 100;
 }
 else
  simple_debug = n;

 debugstream = dbgs;

 ecpg_log("ECPGdebug: set to %d\n", simple_debug);




}
