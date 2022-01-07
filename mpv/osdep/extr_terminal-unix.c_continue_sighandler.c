
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SA_RESETHAND ;
 int SIGTSTP ;
 int getch2_poll () ;
 int setsigaction (int ,int ,int ,int) ;
 int stop_sighandler ;

__attribute__((used)) static void continue_sighandler(int signum)
{

    setsigaction(SIGTSTP, stop_sighandler, SA_RESETHAND, 0);

    getch2_poll();
}
