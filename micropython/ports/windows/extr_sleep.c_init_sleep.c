
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreateWaitableTimer (int *,int ,int *) ;
 int TRUE ;
 int waitTimer ;

void init_sleep(void) {
    waitTimer = CreateWaitableTimer(((void*)0), TRUE, ((void*)0));
}
