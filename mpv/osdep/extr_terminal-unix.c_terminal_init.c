
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CLOEXEC ;
 int O_RDWR ;
 int SA_RESETHAND ;
 int SIGCONT ;
 int SIGTSTP ;
 int SIGTTIN ;
 int SIGTTOU ;
 int SIG_IGN ;
 scalar_t__ STDIN_FILENO ;
 scalar_t__ STDOUT_FILENO ;
 int assert (int) ;
 int continue_sighandler ;
 int getch2_enabled ;
 int getch2_poll () ;
 scalar_t__ open (char*,int) ;
 int setsigaction (int ,int ,int ,int) ;
 int stop_sighandler ;
 scalar_t__ tty_in ;
 scalar_t__ tty_out ;

void terminal_init(void)
{
    assert(!getch2_enabled);
    getch2_enabled = 1;

    tty_in = tty_out = open("/dev/tty", O_RDWR | O_CLOEXEC);
    if (tty_in < 0) {
        tty_in = STDIN_FILENO;
        tty_out = STDOUT_FILENO;
    }


    setsigaction(SIGCONT, continue_sighandler, 0, 1);
    setsigaction(SIGTSTP, stop_sighandler, SA_RESETHAND, 0);
    setsigaction(SIGTTIN, SIG_IGN, 0, 1);
    setsigaction(SIGTTOU, SIG_IGN, 0, 1);

    getch2_poll();
}
