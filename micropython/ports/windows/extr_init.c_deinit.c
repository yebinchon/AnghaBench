
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int SetConsoleCtrlHandler (int ,int ) ;
 int console_sighandler ;
 int deinit_sleep () ;

void deinit() {
    SetConsoleCtrlHandler(console_sighandler, FALSE);
    deinit_sleep();
}
