
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef enum conn_states { ____Placeholder_conn_states } conn_states ;
struct TYPE_4__ {int state; int sfd; int wbytes; int wbuf; } ;
typedef TYPE_1__ conn ;
struct TYPE_5__ {int verbose; } ;


 int MEMCACHED_PROCESS_COMMAND_END (int,int ,int ) ;
 int assert (int) ;
 int conn_listening ;
 int conn_max_state ;
 int conn_mwrite ;
 int conn_write ;
 int fprintf (int ,char*,int,char*,char*) ;
 TYPE_2__ settings ;
 char* state_text (int) ;
 int stderr ;

__attribute__((used)) static void conn_set_state(conn *c, enum conn_states state) {
    assert(c != ((void*)0));
    assert(state >= conn_listening && state < conn_max_state);

    if (state != c->state) {
        if (settings.verbose > 2) {
            fprintf(stderr, "%d: going from %s to %s\n",
                    c->sfd, state_text(c->state),
                    state_text(state));
        }

        if (state == conn_write || state == conn_mwrite) {
            MEMCACHED_PROCESS_COMMAND_END(c->sfd, c->wbuf, c->wbytes);
        }
        c->state = state;
    }
}
