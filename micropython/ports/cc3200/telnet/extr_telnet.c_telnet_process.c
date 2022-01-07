
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int _i16 ;
struct TYPE_2__ {int rxWindex; int rxRindex; int * rxBuffer; } ;


 scalar_t__ E_TELNET_RESULT_OK ;
 int TELNET_RX_BUFFER_SIZE ;
 TYPE_1__ telnet_data ;
 scalar_t__ telnet_recv_text_non_blocking (int *,int,int*) ;

__attribute__((used)) static void telnet_process (void) {
    _i16 rxLen;
    _i16 maxLen = (telnet_data.rxWindex >= telnet_data.rxRindex) ? (TELNET_RX_BUFFER_SIZE - telnet_data.rxWindex) :
                                                                   ((telnet_data.rxRindex - telnet_data.rxWindex) - 1);

    maxLen = (telnet_data.rxRindex == 0) ? (maxLen - 1) : maxLen;

    if (maxLen > 0) {
        if (E_TELNET_RESULT_OK == telnet_recv_text_non_blocking(&telnet_data.rxBuffer[telnet_data.rxWindex], maxLen, &rxLen)) {

            telnet_data.rxWindex = telnet_data.rxWindex + rxLen;
        }
    }
}
