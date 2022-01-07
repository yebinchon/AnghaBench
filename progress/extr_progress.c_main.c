
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int we_wordc; char** we_wordv; } ;
typedef TYPE_1__ wordexp_t ;
struct winsize {int dummy; } ;
typedef scalar_t__ pid_t ;


 int EXIT_FAILURE ;
 int LC_CTYPE ;
 int SIGINT ;
 int STDOUT_FILENO ;
 int TIOCGWINSZ ;
 int assert (int ) ;
 int endwin () ;
 int exit (int ) ;
 scalar_t__ flag_monitor ;
 scalar_t__ flag_monitor_continuous ;
 int flag_throughput ;
 int fprintf (int ,char*) ;
 char* getenv (char*) ;
 int * initscr () ;
 int int_handler ;
 int ioctl (int ,int ,struct winsize*) ;
 int * mainwin ;
 char* malloc (int) ;
 int monitor_processes (scalar_t__*) ;
 int parse_options (int,char**) ;
 int populate_proc_names () ;
 int refresh () ;
 int set_hlist_size (int) ;
 int setlocale (int ,char*) ;
 int signal (int ,int ) ;
 int sprintf (char*,char*,char*,char*) ;
 int stderr ;
 int strlen (char*) ;
 int throughput_wait_secs ;
 int usleep (int) ;
 scalar_t__ wordexp (char*,TYPE_1__*,int ) ;

int main(int argc, char *argv[])
{
pid_t nb_pid;
struct winsize ws;
wordexp_t env_wordexp;
char *env_progress_args;
char *env_progress_args_full;

populate_proc_names();

env_progress_args = getenv("PROGRESS_ARGS");

if (env_progress_args) {
    int full_len;



    full_len = strlen(argv[0]) + 1 + strlen(env_progress_args) + 1;
    env_progress_args_full = malloc(full_len * sizeof(char));
    assert(env_progress_args_full != ((void*)0));
    sprintf(env_progress_args_full, "%s %s", argv[0], env_progress_args);

    if (wordexp(env_progress_args_full, &env_wordexp, 0)) {
        fprintf(stderr,"Unable to parse PROGRESS_ARGS environment variable.\n");
        exit(EXIT_FAILURE);
    }
    parse_options(env_wordexp.we_wordc,env_wordexp.we_wordv);
}
parse_options(argc,argv);


ioctl(STDOUT_FILENO, TIOCGWINSZ, &ws);
if (flag_monitor || flag_monitor_continuous) {
    setlocale(LC_CTYPE, "");
    if ((mainwin = initscr()) == ((void*)0) ) {
        fprintf(stderr, "Error initialising ncurses.\n");
        exit(EXIT_FAILURE);
    }
    if (!flag_throughput) {
      flag_throughput = 1;
      throughput_wait_secs = 1;
    }
    set_hlist_size(throughput_wait_secs);
    signal(SIGINT, int_handler);
    do {
        monitor_processes(&nb_pid);
        refresh();
        if(flag_monitor_continuous && !nb_pid) {
          usleep(1000000 * throughput_wait_secs);
        }
    } while ((flag_monitor && nb_pid) || flag_monitor_continuous);
    endwin();
}
else {
    set_hlist_size(throughput_wait_secs);
    monitor_processes(&nb_pid);
}
return 0;
}
