
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEND_STRING (char*) ;
 int terminal_enabled ;

void disable_terminal(void) {
    terminal_enabled = 0;
    SEND_STRING("\n");
}
