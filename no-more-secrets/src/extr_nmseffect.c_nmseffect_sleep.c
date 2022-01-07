
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;


 int nanosleep (struct timespec*,int *) ;

__attribute__((used)) static void nmseffect_sleep(int t) {
 struct timespec ts;

 ts.tv_sec = t / 1000;
 ts.tv_nsec = (t % 1000) * 1000000;

 nanosleep(&ts, ((void*)0));
}
