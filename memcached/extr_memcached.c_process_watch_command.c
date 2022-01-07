
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_10__ {int value; } ;
typedef TYPE_1__ token_t ;
struct TYPE_11__ {int event; int sfd; } ;
typedef TYPE_2__ conn ;


 int COMMAND_TOKEN ;



 int LOG_EVICTIONS ;
 int LOG_FETCHERS ;
 int LOG_MUTATIONS ;
 int LOG_RAWCMDS ;
 int LOG_SYSEVENTS ;
 int assert (int ) ;
 int conn_set_state (TYPE_2__*,int ) ;
 int conn_watch ;
 int event_del (int *) ;
 int logger_add_watcher (TYPE_2__*,int ,int ) ;
 int out_string (TYPE_2__*,char*) ;
 int set_noreply_maybe (TYPE_2__*,TYPE_1__*,size_t const) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void process_watch_command(conn *c, token_t *tokens, const size_t ntokens) {
    uint16_t f = 0;
    int x;
    assert(c != ((void*)0));

    set_noreply_maybe(c, tokens, ntokens);
    if (ntokens > 2) {
        for (x = COMMAND_TOKEN + 1; x < ntokens - 1; x++) {
            if ((strcmp(tokens[x].value, "rawcmds") == 0)) {
                f |= LOG_RAWCMDS;
            } else if ((strcmp(tokens[x].value, "evictions") == 0)) {
                f |= LOG_EVICTIONS;
            } else if ((strcmp(tokens[x].value, "fetchers") == 0)) {
                f |= LOG_FETCHERS;
            } else if ((strcmp(tokens[x].value, "mutations") == 0)) {
                f |= LOG_MUTATIONS;
            } else if ((strcmp(tokens[x].value, "sysevents") == 0)) {
                f |= LOG_SYSEVENTS;
            } else {
                out_string(c, "ERROR");
                return;
            }
        }
    } else {
        f |= LOG_FETCHERS;
    }

    switch(logger_add_watcher(c, c->sfd, f)) {
        case 128:
            out_string(c, "WATCHER_TOO_MANY log watcher limit reached");
            break;
        case 130:
            out_string(c, "WATCHER_FAILED failed to add log watcher");
            break;
        case 129:
            conn_set_state(c, conn_watch);
            event_del(&c->event);
            break;
    }
}
