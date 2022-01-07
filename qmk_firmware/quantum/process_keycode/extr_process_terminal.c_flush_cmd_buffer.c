
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_BUFF_SIZE ;
 int SEND_STRING (char*) ;
 int cmd_buffer ;
 int memset (int ,int ,int) ;

void flush_cmd_buffer(void) {
    memset(cmd_buffer, 0, CMD_BUFF_SIZE * 80);
    SEND_STRING("Buffer Cleared!\n");
}
