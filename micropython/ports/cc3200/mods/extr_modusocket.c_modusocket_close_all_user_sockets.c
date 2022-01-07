
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sd; scalar_t__ user; } ;


 int MOD_NETWORK_MAX_SOCKETS ;
 int SL_OS_WAIT_FOREVER ;
 int modusocket_LockObj ;
 TYPE_1__* modusocket_sockets ;
 int sl_Close (int) ;
 int sl_LockObjLock (int *,int ) ;
 int sl_LockObjUnlock (int *) ;

void modusocket_close_all_user_sockets (void) {
    sl_LockObjLock (&modusocket_LockObj, SL_OS_WAIT_FOREVER);
    for (int i = 0; i < MOD_NETWORK_MAX_SOCKETS; i++) {
        if (modusocket_sockets[i].sd >= 0 && modusocket_sockets[i].user) {
            sl_Close(modusocket_sockets[i].sd);
            modusocket_sockets[i].sd = -1;
        }
    }
    sl_LockObjUnlock (&modusocket_LockObj);
}
