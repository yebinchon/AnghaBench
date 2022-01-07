
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_BUFF_SIZE ;
 int SEND_STRING (char*) ;
 char const** cmd_buffer ;
 int itoa (int,char*,int) ;
 int send_string (char const*) ;
 int wait_ms (int) ;

void print_cmd_buff(void) {


    wait_ms(250);
    for (int i = 0; i < CMD_BUFF_SIZE; i++) {
        char tmpChar = ' ';
        itoa(i, &tmpChar, 10);
        const char *tmpCnstCharStr = &tmpChar;
        send_string(tmpCnstCharStr);
        SEND_STRING(". ");
        send_string(cmd_buffer[i]);
        SEND_STRING("\n");
    }
}
