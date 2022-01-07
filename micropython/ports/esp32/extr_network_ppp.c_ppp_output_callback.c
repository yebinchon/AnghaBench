
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
typedef int u32_t ;
typedef int ppp_pcb ;
struct TYPE_2__ {int stream; } ;
typedef TYPE_1__ ppp_if_obj_t ;


 int MP_STREAM_RW_WRITE ;
 int mp_stream_rw (int ,int *,int ,int*,int ) ;

__attribute__((used)) static u32_t ppp_output_callback(ppp_pcb *pcb, u8_t *data, u32_t len, void *ctx) {
    ppp_if_obj_t *self = ctx;
    int err;
    return mp_stream_rw(self->stream, data, len, &err, MP_STREAM_RW_WRITE);
}
