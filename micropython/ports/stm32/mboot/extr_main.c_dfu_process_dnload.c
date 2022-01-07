
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int wBlockNum; int wLength; int* buf; scalar_t__ addr; } ;


 int DFU_STATUS_DNLOAD_IDLE ;
 int DFU_STATUS_ERROR ;
 int DFU_XFER_SIZE ;
 TYPE_1__ dfu_state ;
 int do_mass_erase () ;
 int do_page_erase (scalar_t__,scalar_t__*) ;
 int do_write (scalar_t__,int*,int) ;
 scalar_t__ get_le32 (int*) ;

__attribute__((used)) static int dfu_process_dnload(void) {
    int ret = -1;
    if (dfu_state.wBlockNum == 0) {

        if (dfu_state.wLength >= 1 && dfu_state.buf[0] == 0x41) {
            if (dfu_state.wLength == 1) {

                ret = do_mass_erase();
            } else if (dfu_state.wLength == 5) {

                uint32_t next_addr;
                ret = do_page_erase(get_le32(&dfu_state.buf[1]), &next_addr);
            }
        } else if (dfu_state.wLength >= 1 && dfu_state.buf[0] == 0x21) {
            if (dfu_state.wLength == 5) {

                dfu_state.addr = get_le32(&dfu_state.buf[1]);
                ret = 0;
            }
        }
    } else if (dfu_state.wBlockNum > 1) {

        uint32_t addr = (dfu_state.wBlockNum - 2) * DFU_XFER_SIZE + dfu_state.addr;
        ret = do_write(addr, dfu_state.buf, dfu_state.wLength);
    }
    if (ret == 0) {
        return DFU_STATUS_DNLOAD_IDLE;
    } else {
        return DFU_STATUS_ERROR;
    }
}
