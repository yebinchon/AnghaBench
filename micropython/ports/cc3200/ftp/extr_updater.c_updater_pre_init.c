
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 scalar_t__ OSI_OK ;
 scalar_t__ sl_LockObjCreate (int *,char*) ;
 int updater_LockObj ;

__attribute__ ((section (".boot")))
void updater_pre_init (void) {

    ASSERT(OSI_OK == sl_LockObjCreate(&updater_LockObj, "UpdaterLock"));
}
