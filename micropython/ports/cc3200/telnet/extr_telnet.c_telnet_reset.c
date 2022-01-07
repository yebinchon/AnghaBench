
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; int sd; int n_sd; } ;


 int E_TELNET_STE_START ;
 int servers_close_socket (int *) ;
 TYPE_1__ telnet_data ;

void telnet_reset (void) {

    servers_close_socket(&telnet_data.n_sd);
    servers_close_socket(&telnet_data.sd);
    telnet_data.state = E_TELNET_STE_START;
}
