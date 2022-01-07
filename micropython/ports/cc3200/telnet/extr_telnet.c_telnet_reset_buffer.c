
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* rxBuffer; int rxWindex; } ;


 int TELNET_RX_BUFFER_SIZE ;
 int memset (char*,char,int) ;
 TYPE_1__ telnet_data ;

__attribute__((used)) static void telnet_reset_buffer (void) {

    memset (telnet_data.rxBuffer, '\b', TELNET_RX_BUFFER_SIZE / 2);
    telnet_data.rxWindex = TELNET_RX_BUFFER_SIZE / 2;

    telnet_data.rxBuffer[telnet_data.rxWindex++] = '\r';
}
