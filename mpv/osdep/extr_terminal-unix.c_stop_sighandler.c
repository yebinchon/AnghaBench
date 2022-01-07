
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGTSTP ;
 int do_deactivate_getch2 () ;
 int raise (int ) ;

__attribute__((used)) static void stop_sighandler(int signum)
{
    do_deactivate_getch2();



    raise(SIGTSTP);
}
