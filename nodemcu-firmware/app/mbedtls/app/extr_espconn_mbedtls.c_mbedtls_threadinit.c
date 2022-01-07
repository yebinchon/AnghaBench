
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ets_task (int ,int ,int ,int ) ;
 int lwIPThreadFlag ;
 int lwIPThreadPrio ;
 int lwIPThreadQueue ;
 int lwIPThreadQueueLen ;
 int mbedtls_thread ;

__attribute__((used)) static void mbedtls_threadinit(void)
{
 ets_task(mbedtls_thread, lwIPThreadPrio, lwIPThreadQueue, lwIPThreadQueueLen);
 lwIPThreadFlag = 1;
}
