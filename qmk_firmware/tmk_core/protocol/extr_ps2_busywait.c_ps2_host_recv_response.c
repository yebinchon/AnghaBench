
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ ps2_error ;
 int ps2_host_recv () ;

uint8_t ps2_host_recv_response(void) {


    uint8_t data = 0;
    uint8_t try
        = 250;
    do {
        data = ps2_host_recv();
    } while (try --&&ps2_error);
    return data;
}
