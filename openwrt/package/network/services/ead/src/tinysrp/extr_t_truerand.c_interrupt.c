
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 scalar_t__ count ;
 int done ;
 int env ;
 int longjmp (int ,int) ;
 int signal (int ,void (*) ()) ;
 int tick () ;

__attribute__((used)) static void
interrupt()
{
 if (count) {



  ++done;
  return;

 }

 (void) signal(SIGALRM, interrupt);
 tick();
}
