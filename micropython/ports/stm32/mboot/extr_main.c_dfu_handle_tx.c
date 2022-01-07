
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int cmd; int status; scalar_t__ addr; } ;






 int DFU_GETSTATUS ;
 int DFU_STATUS_BUSY ;
 int DFU_STATUS_MANIFEST ;
 int DFU_STATUS_UPLOAD_IDLE ;
 int DFU_UPLOAD ;
 TYPE_1__ dfu_state ;
 int do_read (scalar_t__,int,int*) ;

__attribute__((used)) static int dfu_handle_tx(int cmd, int arg, int len, uint8_t *buf, int max_len) {
    if (cmd == DFU_UPLOAD) {
        if (arg >= 2) {
            dfu_state.cmd = 128;
            uint32_t addr = (arg - 2) * max_len + dfu_state.addr;
            do_read(addr, len, buf);
            return len;
        }
    } else if (cmd == DFU_GETSTATUS && len == 6) {

        switch (dfu_state.cmd) {
            case 129:
                break;
            case 130:
                dfu_state.status = DFU_STATUS_MANIFEST;
                break;
            case 128:
                dfu_state.status = DFU_STATUS_UPLOAD_IDLE;
                break;
            case 131:
                dfu_state.status = DFU_STATUS_BUSY;
                break;
        }
        buf[0] = 0;
        buf[1] = dfu_state.cmd;
        buf[2] = 0;
        buf[3] = 0;
        buf[4] = dfu_state.status;
        buf[5] = 0;
        return 6;
    }
    return -1;
}
