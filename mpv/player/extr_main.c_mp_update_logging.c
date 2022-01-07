
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPContext {int input; TYPE_1__* opts; int log; int global; } ;
struct TYPE_2__ {int use_terminal; scalar_t__ consolecontrols; } ;


 int cas_terminal_owner (struct MPContext*,struct MPContext*) ;
 int mp_msg_has_log_file (int ) ;
 int mp_msg_update_msglevels (int ,TYPE_1__*) ;
 int mp_print_version (int ,int) ;
 int terminal_init () ;
 int terminal_setup_getch (int ) ;
 int terminal_uninit () ;

void mp_update_logging(struct MPContext *mpctx, bool preinit)
{
    bool had_log_file = mp_msg_has_log_file(mpctx->global);

    mp_msg_update_msglevels(mpctx->global, mpctx->opts);

    bool enable = mpctx->opts->use_terminal;
    bool enabled = cas_terminal_owner(mpctx, mpctx);
    if (enable != enabled) {
        if (enable && cas_terminal_owner(((void*)0), mpctx)) {
            terminal_init();
            enabled = 1;
        } else if (!enable) {
            terminal_uninit();
            cas_terminal_owner(mpctx, ((void*)0));
        }
    }

    if (mp_msg_has_log_file(mpctx->global) && !had_log_file)
        mp_print_version(mpctx->log, 0);

    if (enabled && !preinit && mpctx->opts->consolecontrols)
        terminal_setup_getch(mpctx->input);
}
