
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEND_STRING (char*) ;
 int buffer ;
 int send_string (int ) ;
 int wait_ms (int) ;

void command_not_found(void) {
    wait_ms(50);
    SEND_STRING("command \"");
    send_string(buffer);
    SEND_STRING("\" not found\n");
}
