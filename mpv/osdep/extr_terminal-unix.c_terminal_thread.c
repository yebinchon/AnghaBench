
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {scalar_t__ revents; int fd; int events; } ;
struct mp_cmd {int dummy; } ;


 int POLLIN ;
 int bstr0 (char*) ;
 int * death_pipe ;
 int getch2 (int ) ;
 int getch2_poll () ;
 int input_ctx ;
 struct mp_cmd* mp_input_parse_cmd (int ,int ,char*) ;
 int mp_input_queue_cmd (int ,struct mp_cmd*) ;
 int mpthread_set_name (char*) ;
 int polldev (struct pollfd*,int,int) ;
 int read (int ,char*,int) ;
 int read_terminal ;
 int tty_in ;

__attribute__((used)) static void *terminal_thread(void *ptr)
{
    mpthread_set_name("terminal");
    bool stdin_ok = read_terminal;
    while (1) {
        getch2_poll();
        struct pollfd fds[2] = {
            { .events = POLLIN, .fd = death_pipe[0] },
            { .events = POLLIN, .fd = tty_in }
        };
        polldev(fds, stdin_ok ? 2 : 1, -1);
        if (fds[0].revents)
            break;
        if (fds[1].revents) {
            if (!getch2(input_ctx))
                break;
        }
    }
    char c;
    bool quit = read(death_pipe[0], &c, 1) == 1 && c == 1;

    if (quit) {
        struct mp_cmd *cmd = mp_input_parse_cmd(input_ctx, bstr0("quit 4"), "");
        if (cmd)
            mp_input_queue_cmd(input_ctx, cmd);
    }
    return ((void*)0);
}
