
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_flags; int sa_handler; } ;
typedef scalar_t__ pid_t ;


 int EX_SOFTWARE ;
 int SIGALRM ;
 int SIGHUP ;
 int SIGINT ;
 int SIGKILL ;
 int SIGPIPE ;
 int SIGTERM ;
 int SIGUSR1 ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int WTERMSIG (int) ;
 int alarm (int) ;
 int caught_sig ;
 int fprintf (int ,char*) ;
 scalar_t__ kill (scalar_t__,int) ;
 int perror (char*) ;
 int sigaction (int,struct sigaction*,int *) ;
 int signal_handler ;
 int stderr ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static int wait_for_process(pid_t pid)
{
    int rv = EX_SOFTWARE;
    int status = 0;
    int i = 0;
    struct sigaction sig_handler;

    sig_handler.sa_handler = signal_handler;
    sig_handler.sa_flags = 0;

    sigaction(SIGALRM, &sig_handler, ((void*)0));
    sigaction(SIGHUP, &sig_handler, ((void*)0));
    sigaction(SIGINT, &sig_handler, ((void*)0));
    sigaction(SIGUSR1, &sig_handler, ((void*)0));
    sigaction(SIGTERM, &sig_handler, ((void*)0));
    sigaction(SIGPIPE, &sig_handler, ((void*)0));


    for (i = 0; ;i++) {
        pid_t p = waitpid(pid, &status, 0);
        if (p == pid) {

            rv = WIFEXITED(status) ?
                WEXITSTATUS(status) :
                (0x80 | WTERMSIG(status));
            break;
        } else {
            int sig = 0;
            switch (i) {
            case 0:

                sig = caught_sig > 0 ? caught_sig : SIGTERM;
                if (caught_sig == SIGALRM) {
                   fprintf(stderr, "Timeout.. killing the process\n");
                }
                break;
            case 1:
                sig = SIGTERM;
                break;
            default:
                sig = SIGKILL;
                break;
            }
            if (kill(pid, sig) < 0) {

                perror("lost child when trying to kill");
            }

            alarm(5);
        }
    }
    return rv;
}
