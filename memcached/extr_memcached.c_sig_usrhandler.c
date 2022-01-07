
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;
 int stop_main_loop ;
 char* strsignal (int const) ;

__attribute__((used)) static void sig_usrhandler(const int sig) {
    printf("Graceful shutdown signal handled: %s.\n", strsignal(sig));
    stop_main_loop = 1;
}
