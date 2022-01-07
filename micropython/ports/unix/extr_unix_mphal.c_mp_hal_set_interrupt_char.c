
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; int sa_handler; scalar_t__ sa_flags; } ;


 char CHAR_CTRL_C ;
 int SIGINT ;
 int SIG_DFL ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int sighandler ;

void mp_hal_set_interrupt_char(char c) {

    if (c == CHAR_CTRL_C) {


        struct sigaction sa;
        sa.sa_flags = 0;
        sa.sa_handler = sighandler;
        sigemptyset(&sa.sa_mask);
        sigaction(SIGINT, &sa, ((void*)0));

    } else {


        struct sigaction sa;
        sa.sa_flags = 0;
        sa.sa_handler = SIG_DFL;
        sigemptyset(&sa.sa_mask);
        sigaction(SIGINT, &sa, ((void*)0));

    }
}
