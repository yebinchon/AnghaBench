
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_BUFF_SIZE ;
 int * arguments ;
 int buffer ;
 int cmd_buffer ;
 int memset (int ,int ,int) ;
 int send_string (int ) ;
 int strcpy (int ,char*) ;
 int terminal_enabled ;
 int terminal_prompt ;

void enable_terminal(void) {
    terminal_enabled = 1;
    strcpy(buffer, "");
    memset(cmd_buffer, 0, CMD_BUFF_SIZE * 80);
    for (int i = 0; i < 6; i++) strcpy(arguments[i], "");


    send_string(terminal_prompt);
}
