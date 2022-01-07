
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; int * rxBuffer; } ;


 int ASSERT (int ) ;
 int E_TELNET_STE_DISABLED ;
 int TELNET_RX_BUFFER_SIZE ;
 int * mem_Malloc (int ) ;
 TYPE_1__ telnet_data ;

void telnet_init (void) {

    ASSERT ((telnet_data.rxBuffer = mem_Malloc(TELNET_RX_BUFFER_SIZE)) != ((void*)0));
    telnet_data.state = E_TELNET_STE_DISABLED;
}
