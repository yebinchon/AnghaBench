
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int m1 ;
 int m2 ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;

__attribute__((used)) static void *futex_thread2(void *arg)
{
 while (1) {
  mutex_unlock(m2);
  mutex_lock(m1);
 }

 return ((void*)0);
}
