
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int fflush (int ) ;
 int mutex_stdout ;
 int printf (char*,...) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 scalar_t__ quiet ;
 int rand () ;
 int stdout ;
 double waste_time (int) ;

__attribute__((used)) static int
do_work_unit (int who, int n)
{
  int i;
  static int nchars = 0;
  double f = 0.0;

  if (quiet)
    i = 0;
  else {



    assert(pthread_mutex_lock (&mutex_stdout) == 0);




    i = printf ("%c", "0123456789abcdefghijklmnopqrstuvwxyz"[who]);

    if (!(++nchars % 50))
      printf ("\n");

    fflush (stdout);




    assert(pthread_mutex_unlock (&mutex_stdout) == 0);
  }

  n = rand () % 10000;
  f = waste_time (n);


  if (f > 0.0)
    return(n);

  return (n);
}
