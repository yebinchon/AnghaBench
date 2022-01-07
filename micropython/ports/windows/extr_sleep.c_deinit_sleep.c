
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CloseHandle (int *) ;
 int * waitTimer ;

void deinit_sleep(void) {
    if (waitTimer != ((void*)0)) {
        CloseHandle(waitTimer);
        waitTimer = ((void*)0);
    }
}
