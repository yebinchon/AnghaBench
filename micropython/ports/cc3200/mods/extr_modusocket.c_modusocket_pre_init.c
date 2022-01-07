
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 scalar_t__ OSI_OK ;
 int modusocket_LockObj ;
 scalar_t__ sl_LockObjCreate (int *,char*) ;
 int sl_LockObjUnlock (int *) ;

__attribute__ ((section (".boot")))
void modusocket_pre_init (void) {

    ASSERT(OSI_OK == sl_LockObjCreate(&modusocket_LockObj, "SockLock"));
    sl_LockObjUnlock (&modusocket_LockObj);
}
