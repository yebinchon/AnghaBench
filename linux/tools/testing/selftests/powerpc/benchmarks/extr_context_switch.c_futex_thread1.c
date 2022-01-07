
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 int alarm (int) ;
 int iterations ;
 int m1 ;
 int m2 ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int sigalrm_handler ;
 int signal (int ,int ) ;

__attribute__((used)) static void *futex_thread1(void *arg)
{
 signal(SIGALRM, sigalrm_handler);
 alarm(1);

 while (1) {
  mutex_lock(m2);
  mutex_unlock(m1);

  iterations += 2;
 }

 return ((void*)0);
}
