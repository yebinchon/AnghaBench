
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; int cmd; int status; } ;


 int DFU_CMD_NONE ;
 int DFU_STATUS_IDLE ;
 TYPE_1__ dfu_state ;

__attribute__((used)) static void dfu_init(void) {
    dfu_state.status = DFU_STATUS_IDLE;
    dfu_state.cmd = DFU_CMD_NONE;
    dfu_state.addr = 0x08000000;
}
