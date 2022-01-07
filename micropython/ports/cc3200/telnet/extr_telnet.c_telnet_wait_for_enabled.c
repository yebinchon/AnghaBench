
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int n_sd; int sd; int state; scalar_t__ enabled; } ;


 int E_TELNET_STE_START ;
 TYPE_1__ telnet_data ;

__attribute__((used)) static void telnet_wait_for_enabled (void) {

    telnet_data.n_sd = -1;
    telnet_data.sd = -1;


    if (telnet_data.enabled) {
        telnet_data.state = E_TELNET_STE_START;
    }
}
