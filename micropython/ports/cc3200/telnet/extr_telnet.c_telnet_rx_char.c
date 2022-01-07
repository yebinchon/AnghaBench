
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rxRindex; scalar_t__ rxWindex; scalar_t__* rxBuffer; } ;


 TYPE_1__ telnet_data ;

int telnet_rx_char (void) {
    int rx_char = -1;
    if (telnet_data.rxRindex != telnet_data.rxWindex) {

        rx_char = (int)telnet_data.rxBuffer[telnet_data.rxRindex++];
    }
    return rx_char;
}
