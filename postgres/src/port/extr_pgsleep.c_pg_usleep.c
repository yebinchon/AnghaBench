
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; long tv_usec; } ;


 int FALSE ;
 int SleepEx (int,int ) ;
 int select (int ,int *,int *,int *,struct timeval*) ;

void
pg_usleep(long microsec)
{
 if (microsec > 0)
 {

  struct timeval delay;

  delay.tv_sec = microsec / 1000000L;
  delay.tv_usec = microsec % 1000000L;
  (void) select(0, ((void*)0), ((void*)0), ((void*)0), &delay);



 }
}
