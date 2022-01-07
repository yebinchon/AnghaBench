
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {int payload_size; int * payload; } ;


 TYPE_1__ udd_g_ctrlreq ;

void udd_set_setup_payload(uint8_t *payload, uint16_t payload_size) {
    udd_g_ctrlreq.payload = payload;
    udd_g_ctrlreq.payload_size = payload_size;
}
