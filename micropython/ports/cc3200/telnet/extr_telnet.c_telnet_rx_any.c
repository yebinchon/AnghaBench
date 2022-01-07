
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ n_sd; scalar_t__ rxRindex; scalar_t__ rxWindex; scalar_t__ state; } ;


 scalar_t__ E_TELNET_STE_LOGGED_IN ;
 TYPE_1__ telnet_data ;

bool telnet_rx_any (void) {
    return (telnet_data.n_sd > 0) ? (telnet_data.rxRindex != telnet_data.rxWindex &&
            telnet_data.state == E_TELNET_STE_LOGGED_IN) : 0;
}
