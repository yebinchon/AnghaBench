
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; int state; } ;


 int E_TELNET_STE_DISABLED ;
 TYPE_1__ telnet_data ;
 int telnet_reset () ;

void telnet_disable (void) {
    telnet_reset();
    telnet_data.enabled = 0;
    telnet_data.state = E_TELNET_STE_DISABLED;
}
