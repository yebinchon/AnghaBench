
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int16_t ;
struct TYPE_2__ {scalar_t__ sd; } ;
typedef int SlFdSet_t ;


 int MOD_NETWORK_MAX_SOCKETS ;
 int SL_FD_SET (scalar_t__,int *) ;
 TYPE_1__* modusocket_sockets ;
 int sl_Select (scalar_t__,int *,int *,int *,int *) ;

void modusocket_enter_sleep (void) {
    SlFdSet_t socketset;
    int16_t maxfd = 0;

    for (int i = 0; i < MOD_NETWORK_MAX_SOCKETS; i++) {
        int16_t sd;
        if ((sd = modusocket_sockets[i].sd) >= 0) {
            SL_FD_SET(sd, &socketset);
            maxfd = (maxfd > sd) ? maxfd : sd;
        }
    }

    if (maxfd > 0) {

        sl_Select(maxfd + 1, &socketset, ((void*)0), ((void*)0), ((void*)0));
    }
}
