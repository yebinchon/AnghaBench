
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int dummy; } ;


 int handle_command_updates (struct MPContext*) ;
 int handle_cursor_autohide (struct MPContext*) ;
 int handle_dummy_ticks (struct MPContext*) ;
 int handle_osd_redraw (struct MPContext*) ;
 int handle_update_cache (struct MPContext*) ;
 int handle_vo_events (struct MPContext*) ;
 int mp_process_input (struct MPContext*) ;
 int mp_wait_events (struct MPContext*) ;
 int update_osd_msg (struct MPContext*) ;

void mp_idle(struct MPContext *mpctx)
{
    handle_dummy_ticks(mpctx);
    mp_wait_events(mpctx);
    mp_process_input(mpctx);
    handle_command_updates(mpctx);
    handle_update_cache(mpctx);
    handle_cursor_autohide(mpctx);
    handle_vo_events(mpctx);
    update_osd_msg(mpctx);
    handle_osd_redraw(mpctx);
}
