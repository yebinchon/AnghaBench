
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_BUFF_SIZE ;
 int buffer ;
 int * cmd_buffer ;
 scalar_t__ cmd_buffer_enabled ;
 int firstTime ;
 int strcpy (int ,int ) ;
 int strncpy (int ,int ,int) ;

void push_to_cmd_buffer(void) {
    if (cmd_buffer_enabled) {
        if (cmd_buffer == ((void*)0)) {
            return;
        } else {
            if (firstTime) {
                firstTime = 0;
                strcpy(cmd_buffer[0], buffer);
                return;
            }

            for (int i = CMD_BUFF_SIZE - 1; i > 0; --i) {
                strncpy(cmd_buffer[i], cmd_buffer[i - 1], 80);
            }

            strcpy(cmd_buffer[0], buffer);

            return;
        }
    }
}
