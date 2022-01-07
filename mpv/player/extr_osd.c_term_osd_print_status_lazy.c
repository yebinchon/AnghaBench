
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPOpts {scalar_t__ term_osd_bar; scalar_t__ quiet; int use_terminal; } ;
struct MPContext {int log; scalar_t__ stop_play; int playing; int playing_msg_shown; int playback_initialized; struct MPOpts* opts; } ;


 int add_term_osd_bar (struct MPContext*,char**,int) ;
 char* get_term_status_msg (struct MPContext*) ;
 int mp_msg_flush_status_line (int ) ;
 int saddf (char**,char*) ;
 int talloc_free (char*) ;
 int term_osd_set_status_lazy (struct MPContext*,char*) ;
 int terminal_get_size (int*,int*) ;
 int update_vo_playback_state (struct MPContext*) ;
 int update_window_title (struct MPContext*,int) ;

__attribute__((used)) static void term_osd_print_status_lazy(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;

    update_window_title(mpctx, 0);
    update_vo_playback_state(mpctx);

    if (!opts->use_terminal)
        return;

    if (opts->quiet || !mpctx->playback_initialized ||
        !mpctx->playing_msg_shown || mpctx->stop_play)
    {
        if (!mpctx->playing || mpctx->stop_play) {
            mp_msg_flush_status_line(mpctx->log);
            term_osd_set_status_lazy(mpctx, "");
        }
        return;
    }

    char *line = get_term_status_msg(mpctx);

    if (opts->term_osd_bar) {
        saddf(&line, "\n");
        int w = 80, h = 24;
        terminal_get_size(&w, &h);
        add_term_osd_bar(mpctx, &line, w);
    }

    term_osd_set_status_lazy(mpctx, line);
    talloc_free(line);
}
