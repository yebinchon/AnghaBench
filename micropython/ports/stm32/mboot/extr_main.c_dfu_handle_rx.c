
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wBlockNum; int wLength; int buf; void* cmd; void* status; } ;


 int DFU_ABORT ;
 int DFU_CLRSTATUS ;
 void* DFU_CMD_DNLOAD ;
 void* DFU_CMD_EXIT ;
 void* DFU_CMD_NONE ;
 int DFU_DNLOAD ;
 void* DFU_STATUS_IDLE ;
 TYPE_1__ dfu_state ;
 int memcpy (int ,void const*,int) ;

__attribute__((used)) static void dfu_handle_rx(int cmd, int arg, int len, const void *buf) {
    if (cmd == DFU_CLRSTATUS) {

        dfu_state.status = DFU_STATUS_IDLE;
        dfu_state.cmd = DFU_CMD_NONE;
    } else if (cmd == DFU_ABORT) {

        dfu_state.status = DFU_STATUS_IDLE;
        dfu_state.cmd = DFU_CMD_NONE;
    } else if (cmd == DFU_DNLOAD) {
        if (len == 0) {

            dfu_state.cmd = DFU_CMD_EXIT;
        } else {

            dfu_state.cmd = DFU_CMD_DNLOAD;
            dfu_state.wBlockNum = arg;
            dfu_state.wLength = len;
            memcpy(dfu_state.buf, buf, len);
        }
    }
}
