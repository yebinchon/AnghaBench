
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {int dummy; } ;


 int SA_RESETHAND ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 int STDOUT_FILENO ;
 int close_death_pipe () ;
 int close_tty () ;
 int death_pipe ;
 int getch2_enabled ;
 struct input_ctx* input_ctx ;
 int input_thread ;
 scalar_t__ isatty (int ) ;
 scalar_t__ mp_make_wakeup_pipe (int ) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 int quit_request_sighandler ;
 int read_terminal ;
 int setsigaction (int ,int ,int ,int) ;
 int terminal_thread ;
 int tty_in ;

void terminal_setup_getch(struct input_ctx *ictx)
{
    if (!getch2_enabled || input_ctx)
        return;

    if (mp_make_wakeup_pipe(death_pipe) < 0)
        return;




    read_terminal = isatty(tty_in) && isatty(STDOUT_FILENO);

    input_ctx = ictx;

    if (pthread_create(&input_thread, ((void*)0), terminal_thread, ((void*)0))) {
        input_ctx = ((void*)0);
        close_death_pipe();
        close_tty();
        return;
    }

    setsigaction(SIGINT, quit_request_sighandler, SA_RESETHAND, 0);
    setsigaction(SIGQUIT, quit_request_sighandler, SA_RESETHAND, 0);
    setsigaction(SIGTERM, quit_request_sighandler, SA_RESETHAND, 0);
}
