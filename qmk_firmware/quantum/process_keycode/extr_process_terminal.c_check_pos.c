
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CMD_BUFF_SIZE ;
 scalar_t__ current_cmd_buffer_pos ;

void check_pos(void) {
    if (current_cmd_buffer_pos >= CMD_BUFF_SIZE) {
        current_cmd_buffer_pos = CMD_BUFF_SIZE - 1;
    } else if (current_cmd_buffer_pos < 0) {
        current_cmd_buffer_pos = 0;
    }
}
