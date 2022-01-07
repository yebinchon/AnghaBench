
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int connected; } ;
struct TYPE_4__ {scalar_t__ n_sd; int credentialsValid; scalar_t__ timeout; scalar_t__ logginRetries; TYPE_1__ substate; int state; scalar_t__ txRetries; scalar_t__ rxRindex; scalar_t__ rxWindex; int sd; } ;
typedef int SlSocklen_t ;
typedef int SlSockAddr_t ;
typedef int SlSockAddrIn_t ;


 int E_TELNET_STE_CONNECTED ;
 int E_TELNET_STE_SUB_WELCOME ;
 scalar_t__ SL_EAGAIN ;
 int modusocket_socket_add (scalar_t__,int) ;
 int servers_close_socket (int *) ;
 scalar_t__ sl_Accept (int ,int *,int *) ;
 TYPE_2__ telnet_data ;
 int telnet_reset () ;

__attribute__((used)) static void telnet_wait_for_connection (void) {
    SlSocklen_t in_addrSize;
    SlSockAddrIn_t sClientAddress;


    telnet_data.n_sd = sl_Accept(telnet_data.sd, (SlSockAddr_t *)&sClientAddress, (SlSocklen_t *)&in_addrSize);
    if (telnet_data.n_sd == SL_EAGAIN) {
        return;
    }
    else {
        if (telnet_data.n_sd <= 0) {

            telnet_reset();
            return;
        }


        servers_close_socket(&telnet_data.sd);


        modusocket_socket_add(telnet_data.n_sd, 0);


        telnet_data.rxWindex = 0;
        telnet_data.rxRindex = 0;
        telnet_data.txRetries = 0;

        telnet_data.state = E_TELNET_STE_CONNECTED;
        telnet_data.substate.connected = E_TELNET_STE_SUB_WELCOME;
        telnet_data.credentialsValid = 1;
        telnet_data.logginRetries = 0;
        telnet_data.timeout = 0;
    }
}
