
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;


 int EOF ;
 int getchar () ;
 int nanosleep (struct timespec*,int *) ;

char nmstermio_get_char(void) {
 struct timespec ts;
 int t = 50;
 int c;

 ts.tv_sec = t / 1000;
 ts.tv_nsec = (t % 1000) * 1000000;

 while ((c = getchar()) == EOF) {
  nanosleep(&ts, ((void*)0));
 }

 return (char)c;
}
