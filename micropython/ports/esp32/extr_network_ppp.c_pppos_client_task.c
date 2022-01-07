
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u8_t ;
struct TYPE_2__ {int * client_task_handle; int pcb; int stream; } ;
typedef TYPE_1__ ppp_if_obj_t ;
typedef int buf ;


 int mp_stream_rw (int ,int *,int,int*,int ) ;
 int pdTRUE ;
 int pppos_input_tcpip (int ,int *,int) ;
 scalar_t__ ulTaskNotifyTake (int ,int ) ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void pppos_client_task(void *self_in) {
    ppp_if_obj_t *self = (ppp_if_obj_t*)self_in;
    uint8_t buf[256];

    while (ulTaskNotifyTake(pdTRUE, 0) == 0) {
        int err;
        int len = mp_stream_rw(self->stream, buf, sizeof(buf), &err, 0);
        if (len > 0) {
            pppos_input_tcpip(self->pcb, (u8_t*)buf, len);
        }
    }

    self->client_task_handle = ((void*)0);
    vTaskDelete(((void*)0));
}
