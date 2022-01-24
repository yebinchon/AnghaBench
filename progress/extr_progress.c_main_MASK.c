#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int we_wordc; char** we_wordv; } ;
typedef  TYPE_1__ wordexp_t ;
struct winsize {int dummy; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ flag_monitor ; 
 scalar_t__ flag_monitor_continuous ; 
 int flag_throughput ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  int_handler ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct winsize*) ; 
 int /*<<< orphan*/ * mainwin ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int,char**) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC16 (char*) ; 
 int throughput_wait_secs ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 scalar_t__ FUNC18 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC19(int argc, char *argv[])
{
pid_t nb_pid;
struct winsize ws;
wordexp_t env_wordexp;
char *env_progress_args;
char *env_progress_args_full;

FUNC10();

env_progress_args = FUNC4("PROGRESS_ARGS");

if (env_progress_args) {
    int full_len;

    // prefix with (real) argv[0]
    // argv[0] + ' ' + env_progress_args + '\0'
    full_len = FUNC16(argv[0]) + 1 + FUNC16(env_progress_args) + 1;
    env_progress_args_full = FUNC7(full_len * sizeof(char));
    FUNC0(env_progress_args_full != NULL);
    FUNC15(env_progress_args_full, "%s %s", argv[0], env_progress_args);

    if (FUNC18(env_progress_args_full, &env_wordexp, 0)) {
        FUNC3(stderr,"Unable to parse PROGRESS_ARGS environment variable.\n");
        FUNC2(EXIT_FAILURE);
    }
    FUNC9(env_wordexp.we_wordc,env_wordexp.we_wordv);
}
FUNC9(argc,argv);

// ws.ws_row, ws.ws_col
FUNC6(STDOUT_FILENO, TIOCGWINSZ, &ws);
if (flag_monitor || flag_monitor_continuous) {
    FUNC13(LC_CTYPE, "");
    if ((mainwin = FUNC5()) == NULL ) {
        FUNC3(stderr, "Error initialising ncurses.\n");
        FUNC2(EXIT_FAILURE);
    }
    if (!flag_throughput) {
      flag_throughput = 1;
      throughput_wait_secs = 1;
    }
    FUNC12(throughput_wait_secs);
    FUNC14(SIGINT, int_handler);
    do {
        FUNC8(&nb_pid);
        FUNC11();
        if(flag_monitor_continuous && !nb_pid) {
          FUNC17(1000000 * throughput_wait_secs);
        }
    } while ((flag_monitor && nb_pid) || flag_monitor_continuous);
    FUNC1();
}
else {
    FUNC12(throughput_wait_secs);
    FUNC8(&nb_pid);
}
return 0;
}